return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        hidden = true, -- Shows hidden files
        ignored = false, -- Shows files ignored by .gitignore
        sources = {
          explorer = {
            git_status = false, -- Disable git icons in the explorer list
            git_untracked = false,
          },
        },
      },
    },
  },
}
