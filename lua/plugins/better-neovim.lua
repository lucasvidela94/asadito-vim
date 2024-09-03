return {
    require('plugins.toggleterm'),
    require('plugins.lualine'),
    {
        "github/copilot.vim",
    },
    {
        "rescript-lang/vim-rescript",
    },
    {
        "devongovett/tree-sitter-highlight",
    },
    {
        "fladson/vim-kitty",
    },
    {
        "nvim-pack/nvim-spectre",
    },
    {
        "rescript-lang/tree-sitter-rescript",
    },
    {
        dir = "~/.config/nvim/yugem",
        lazy = true,
        priority = 1000,
        config = function()
            require("yugem").setup {}
        end,
        init = function()
            vim.cmd("colorscheme yugem")
        end,
    },
}
