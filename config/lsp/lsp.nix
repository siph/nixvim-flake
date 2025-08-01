{
  lib,
  pkgs,
  ...
}: {
  plugins = {
    lsp = {
      enable = true;

      servers = {
        gopls.enable = true;
        kotlin_language_server.enable = true;
        lua_ls.enable = true;
        marksman.enable = false;
        nil_ls.enable = true;
        nushell.enable = true;
        pylsp.enable = true;
        yamlls.enable = true;
      };
    };

    lspkind = {
      enable = true;
    };

    rustaceanvim = {
      enable = true;

      server = {
        # EOL inlays when?
        # https://github.com/rust-lang/rust-analyzer/issues/4318
        # onAttach = ''
        #   function(client, bufnr)
        #     vim.lsp.inlay_hint.enable(bufnt, true)
        #   end
        # '';
      };

      settings = {
        RustaceanToolOpts.enable_clippy = true;
      };
    };

    jdtls = {
      enable = true;
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
