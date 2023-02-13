local function map(m, k, v)
    vim.keymap.set(m, k, v, {})
end

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Clear Search --
map('n', '<leader>h', ':nohlsearch<CR>')
