{
  autoCmd = [
    {
      event = "TextYankPost";
      group = "highlight_yank";
      command = "silent! lua vim.highlight.on_yank{higroup='Search', timeout=200}";
    }
  ];
  autoGroups.highlight_yank.clear = true;
}
