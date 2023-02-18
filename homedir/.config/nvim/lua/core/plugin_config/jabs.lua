require 'jabs'.setup {
    symbols = {
        current = "C", -- default 
        split = "S", -- default 
        alternate = "A", -- default 
        hidden = "H", -- default ﬘
        locked = "L", -- default 
        ro = "R", -- default 
        edited = "E", -- default 
        terminal = "T", -- default 
        default_file = "D", -- Filetype icon if not present in nvim-web-devicons. Default 
        terminal_symbol = ">_" -- Filetype icon for a terminal split. Default 
    },

    -- Keymaps
    keymap = {
        close = "E", -- Close buffer. Default D
        jump = "<CR>", -- Jump to buffer. Default <cr>
        h_split = "i", -- Horizontally split buffer. Default s
        v_split = "k", -- Vertically split buffer. Default v
        preview = "V", -- Open buffer preview. Default P
    },
}
