local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system(
        {"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
         lazypath})
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({'Mofiqul/vscode.nvim', {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = {"nvim-tree/nvim-web-devicons"}
}, 'neovim/nvim-lspconfig', 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path', 'hrsh7th/cmp-cmdline',
                       'hrsh7th/nvim-cmp', 'onsails/lspkind-nvim', "yehuohan/cmp-im", "yehuohan/cmp-im-zh",
                       "nvim-treesitter/nvim-treesitter", "hrsh7th/cmp-vsnip", 'hrsh7th/vim-vsnip',
                       'numToStr/Comment.nvim', "windwp/nvim-autopairs", "petertriho/nvim-scrollbar",
                       'simnalamburt/vim-mundo',  "rcarriga/nvim-notify",
{
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
    }
},{
    "smjonas/inc-rename.nvim",
    config = function()
        require("inc_rename").setup()
    end
}, {
    'goolord/alpha-nvim',
    dependencies = {'nvim-tree/nvim-web-devicons'},
    config = function()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
}, {
    "Pocco81/auto-save.nvim",
    config = function()
        require("auto-save").setup {
            -- your config goes here
            -- or just leave it empty :)
        }
    end
}, "nvim-tree/nvim-tree.lua", 'christoomey/vim-tmux-navigator', "sbdchd/neoformat", {
    'nvim-telescope/telescope.nvim',
    dependencies = {'nvim-lua/plenary.nvim'}

}, "lewis6991/gitsigns.nvim", {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons'
}, {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {},
    -- stylua: ignore
    keys = {{
        "r",
        mode = "o",
        function()
            require("flash").remote()
        end,
        desc = "Remote Flash"
    }, {
        "R",
        mode = {"o", "x"},
        function()
            require("flash").treesitter_search()
        end,
        desc = "Treesitter Search"
    }, {
        "<c-s>",
        mode = {"c"},
        function()
            require("flash").toggle()
        end,
        desc = "Toggle Flash Search"
    }}
}, {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
}, {
    'nvim-lualine/lualine.nvim',
    dependencies = {'nvim-tree/nvim-web-devicons'}
}})
