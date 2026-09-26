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
          files = {
            hidden = true, -- Show dotfiles (.env, .github)
            -- ignored = true, -- Force-search files listed in .gitignore
            follow = true, -- Follow symlinks if you have any
          },
          grep = {
            hidden = true, -- Also live grep text inside hidden files
            -- ignored = true, -- Also live grep text inside git-ignored files
          },
        },
      },
    },
  },
}
