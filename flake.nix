{
  description = "Chris' NeoVim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    nix-colors.url = "github:misterio77/nix-colors";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    tree-sitter-nu = {
      url = "github:nushell/tree-sitter-nu";
      flake = false;
    };
    tree-sitter-surrealdb = {
      url = "github:dariuscorvus/tree-sitter-surrealdb";
      flake = false;
    };
    pre-commit-hooks = {
      url = "github:cachix/pre-commit-hooks.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    flake-parts,
    nix-colors,
    nixpkgs,
    nixvim,
    pre-commit-hooks,
    tree-sitter-nu,
    tree-sitter-surrealdb,
    ...
  } @ inputs:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = [
        "aarch64-linux"
        "x86_64-linux"
        "aarch64-darwin"
        "x86_64-darwin"
      ];

      perSystem = {
        system,
        pkgs,
        self',
        lib,
        ...
      }: let
        nixvim' = nixvim.legacyPackages.${system};

        nvim = nixvim'.makeNixvimWithModule {
          inherit pkgs;
          module = ./config/full.nix;
        };

        nvim-lite = nixvim'.makeNixvimWithModule {
          inherit pkgs;
          module = ./config/lite.nix;
        };
      in {
        _module.args.pkgs = import nixpkgs {
          inherit system;
          overlays = builtins.attrValues {
            default = import ./overlay {
              inherit nix-colors nixvim tree-sitter-nu tree-sitter-surrealdb lib system;
            };
          };
        };

        checks = {
          inherit nvim;

          pre-commit-check = pre-commit-hooks.lib.${system}.run {
            src = ./.;
            hooks = {
              statix.enable = true;
              alejandra.enable = true;
            };
          };
        };

        formatter = pkgs.alejandra;

        packages = rec {
          default = full;
          full = nvim;
          lite = nvim-lite;
        };

        devShells = {
          default = with pkgs;
            mkShell {
              inherit (self'.checks.pre-commit-check) shellHook;
            };
        };
      };
    };
}
