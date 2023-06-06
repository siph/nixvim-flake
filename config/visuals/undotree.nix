{
  plugins.undotree = {
    enable = true;
  };
  maps = {
    normal = {
      "<leader>u" = {
        desc = "Toggle Undotree";
        action = "<cmd>UndotreeToggle<CR>";
      };
    };
  };
}
