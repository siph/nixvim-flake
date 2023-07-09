{
  plugins.bufferline = {
    enable = true;
    rightMouseCommand = "vertical sbuffer %d";
    numbers = "both";
    diagnostics = "nvim_lsp";
    separatorStyle = "slope";
    offsets = [
      {
        filetype = "NvimTree";
        text = "File Explorer";
        text_align = "left";
      }
    ];
    highlights = {
      background.bg = "none";
      bufferSelected.bg = "none";
      bufferVisible.bg = "none";
      closeButton.bg = "none";
      closeButtonSelected.bg = "none";
      closeButtonVisible.bg = "none";
      diagnostic.bg = "none";
      diagnosticSelected.bg = "none";
      diagnosticVisible.bg = "none";
      duplicate.bg = "none";
      duplicateSelected.bg = "none";
      duplicateVisible.bg = "none";
      error.bg = "none";
      errorSelected.bg = "none";
      errorVisible.bg = "none";
      errorDiagnostic.bg = "none";
      errorDiagnosticSelected.bg = "none";
      errorDiagnosticVisible.bg = "none";
      fill.bg = "none";
      indicatorSelected.bg = "none";
      info.bg = "none";
      infoSelected.bg = "none";
      infoVisible.bg = "none";
      infoDiagnostic.bg = "none";
      infoDiagnosticSelected.bg = "none";
      infoDiagnosticVisible.bg = "none";
      modified.bg = "none";
      modifiedSelected.bg = "none";
      modifiedVisible.bg = "none";
      pick.bg = "none";
      pickSelected.bg = "none";
      pickVisible.bg = "none";
      separator.bg = "none";
      separatorSelected.bg = "none";
      separatorVisible.bg = "none";
      tab.bg = "none";
      tabClose.bg = "none";
      tabSelected.bg = "none";
      warning.bg = "none";
      warningSelected.bg = "none";
      warningVisible.bg = "none";
      warningDiagnostic.bg = "none";
      warningDiagnosticSelected.bg = "none";
      warningDiagnosticVisible.bg = "none";
    };
  };
  maps = {
    normal."<A-l>" = {
      action = "<Cmd>BufferLineCycleNext<CR>";
    };
    normal."<A-h>" = {
      action = "<Cmd>BufferLineCyclePrev<CR>";
    };
  };
}
