return{
    {"neovim/nvim-lspconfig", event = "VeryLazy",  dependencies = { "neovim/nvim-lspconfig" },},
    {"hrsh7th/nvim-cmp",  event = "VeryLazy",  config = function()  require("cmpcfg")  end,},
	{"hrsh7th/cmp-nvim-lsp",  event = "InsertEnter", dependencies = { "hrsh7th/nvim-cmp" },},
	{"hrsh7th/cmp-emoji",  event = "InsertEnter", dependencies = { "hrsh7th/nvim-cmp" },},
	{"hrsh7th/cmp-buffer",  event = "InsertEnter", dependencies = { "hrsh7th/nvim-cmp" },},
	{"hrsh7th/cmp-cmdline",  event = "CmdlineEnter",	dependencies = { "hrsh7th/nvim-cmp" },},
    {
        'm4xshen/autoclose.nvim',
        event = "VeryLazy",
    },
    {
        "williamboman/mason.nvim",
        event = "VeryLazy",
    },
    {
        'ojroques/nvim-hardline',
        event = "VeryLazy",
    },
    {
        'stevearc/oil.nvim',
        opts = {},
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function ()
            require("oilcfg")
        end,
    },
    {
        'goolord/alpha-nvim',
        config = function ()
            require'alpha'.setup(require'alpha.themes.dashboard'.config)
        end
    },
    {
        'tanvirtin/monokai.nvim',
    }
}