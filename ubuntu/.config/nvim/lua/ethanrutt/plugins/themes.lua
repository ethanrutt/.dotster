return {
    {
        -- Theme
        'catppuccin/nvim',
        priority = 1000,
        config = function()
            vim.cmd.colorscheme 'catppuccin'
        end,
    },


    {
        -- Set lualine as statusline
        'nvim-lualine/lualine.nvim',
        -- See `:help lualine.txt`
        opts = {
            options = {
                icons_enabled = false,
                theme = 'palenight',
                component_separators = '|',
                section_separators = '',
            },
        },
    },
}

