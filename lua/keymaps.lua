local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap('n', '<Leader>e', ':e.<CR>', opts)

vim.api.nvim_set_keymap('n', '<Leader>y', '"+y', opts)
vim.api.nvim_set_keymap('v', '<Leader>y', '"+y', opts)
vim.api.nvim_set_keymap('n', '<Leader>Y', '"+yg_', opts)
vim.api.nvim_set_keymap('n', '<Leader>yy', '"+yy', opts)

vim.api.nvim_set_keymap('n', '<Leader>p', '"+p', opts)
vim.api.nvim_set_keymap('n', '<Leader>P', '"+P', opts)
vim.api.nvim_set_keymap('v', '<Leader>p', '"+p', opts)
vim.api.nvim_set_keymap('v', '<Leader>P', '"+P', opts)

-- vim.api.nvim_set_keymap('n', '<Leader><Leader>', ':FZF -m<CR>', opts)

vim.api.nvim_set_keymap('n', '<Leader>nr', ':luafile $HOME/.config/nvim/init.lua<CR>', opts)
