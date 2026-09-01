{
  lib,
  pkgs,
  ...
}: {
  plugins = {
    lsp = {
      enable = true;

      servers = {
        gopls.enable = false;
        kotlin_language_server.enable = false;
        lua_ls.enable = true;
        marksman.enable = false;
        nil_ls.enable = true;
        nushell = {
          enable = true;
          package = null;
        };
        pylsp.enable = false;
        yamlls.enable = true;
      };
    };

    lspkind = {
      enable = true;
    };

    rustaceanvim = {
      enable = true;

      settings = {
        RustaceanToolOpts.enable_clippy = true;
        server = {
          # EOL inlays when?
          # https://github.com/rust-lang/rust-analyzer/issues/4318
          # onAttach = ''
          #   function(client, bufnr)
          #     vim.lsp.inlay_hint.enable(bufnt, true)
          #   end
          # '';
          default_settings = {
            rust-analyzer = {
              files.exclude = [".direnv"];
            };
          };
        };
      };
    };

    jdtls = {
      enable = false;
      settings = {
        # sneak into `.idea` project folder
        cmd = [
          "${lib.getExe pkgs.jdt-language-server}"
          "-data"
          ".idea/nvim-jdtls"
        ];
      };
    };

    none-ls.enable = true;
  };

  dependencies = {
    rust-analyzer.enable = false;
  };
}
