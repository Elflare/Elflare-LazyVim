local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system(
        {
            "git",
            "clone",
            "--filter=blob:none",
            "https://github.com/folke/lazy.nvim.git",
            "--branch=stable", -- latest stable release
            lazypath
        }
    )
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup(
    {
        "numToStr/Comment.nvim",
        "nguyenvukhang/nvim-toggler",
        {
            "folke/flash.nvim",
            event = "VeryLazy",
            ---@type Flash.Config
            opts = {},
            -- stylua: ignore
            keys = {
                {
                    "Q",
                    mode = {"n", "x", "o"},
                    function()
                        require("flash").jump()
                    end,
                    desc = "Flash"
                },
                {
                    "r",
                    mode = "o",
                    function()
                        require("flash").remote()
                    end,
                    desc = "Remote Flash"
                },
                {
                    "R",
                    mode = {"o", "x"},
                    function()
                        require("flash").treesitter_search()
                    end,
                    desc = "Treesitter Search"
                },
                {
                    "<c-s>",
                    mode = {"c"},
                    function()
                        require("flash").toggle()
                    end,
                    desc = "Toggle Flash Search"
                }
            }
        },
        {
            "kylechui/nvim-surround",
            version = "*", -- Use for stability; omit to use `main` branch for the latest features
            event = "VeryLazy",
            config = function()
                require("nvim-surround").setup({})
            end
        }
    }
)
require("flash").toggle()
