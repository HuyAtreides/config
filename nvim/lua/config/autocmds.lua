-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd("BufDelete", {
  callback = function()
    vim.defer_fn(function()
      local wins = vim.api.nvim_list_wins()
      if #wins == 1 then
        local buf = vim.api.nvim_win_get_buf(wins[1])
        local ft = vim.bo[buf].filetype
        if ft == "snacks_explorer" or ft == "neo-tree" then
          vim.cmd("enew")
        end
      end
    end, 50)
  end,
})
