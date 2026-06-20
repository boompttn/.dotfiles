return {
  -- add gruvbox
  { "projekt0n/github-nvim-theme", name = "github-theme" }, -- Configure LazyVim to load gruvbox
  {
    "f-person/auto-dark-mode.nvim",
    opts = {
      set_dark_mode = function()
        vim.cmd("colorscheme github_dark_default")
      end,
      set_light_mode = function()
        vim.cmd("colorscheme github_light_default")
      end,
      update_interval = 3000,
      fallback = "dark",
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "github_dark_default",
    },
  },
}
