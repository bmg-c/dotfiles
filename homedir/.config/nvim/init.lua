-- Base Settings --
require('core.base')

-- Plugins --
require('core.plugins')
require('core.plugin_config')

-- Keybindings --
require('core.keybinds')
vim.cmd('source ~/.config/nvim/lua/core/engram.vim') -- Engram Layout
