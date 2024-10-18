if not vim.g.vscode then
    -- 原生vim
    require("config.options")
    require("config.keymaps")
    require("plugins.lazynvim-init")
    require("plugins.lspconfig")
    vim.cmd("colorscheme nightfox")
    -- require('vscode').load('dark')
    require("oil").setup()
    require("plugins.cmp-nvim")
    -- require("plugins.cmp-config")
    require("plugins/nvim-tree")
    require("plugins/nvim-treesitter")
    require("plugins.cmp-zh")
    require("plugins.autopairs")
    require("plugins.neoformat")
    require("plugins.telescope")
    require("plugins.nvim-toggler")
    require("plugins.save-session")
    require("gitsigns").setup()
    -- require("noice").setup({
    --     lsp = {
    --         -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    --         override = {
    --             ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
    --             ["vim.lsp.util.stylize_markdown"] = true,
    --             ["cmp.entry.get_documentation"] = true -- requires hrsh7th/nvim-cmp
    --
    --     },
    -- })
    require("bufferline").setup(
        {
            options = {
                -- 设置缓冲区标签的最大宽度
                max_name_length = 15, -- 例如，将标签的最大长度设置为20个字符
                -- 设置缓冲区标签的最小宽度
                tab_size = 4
            }
        }
    )
    require("scrollbar").setup()
    require("lualine").setup()
    require("Comment").setup(
        {
            toggler = {
                ---Line-comment toggle keymap
                line = "vu"
            },
            ---LHS of operator-pending mappings in NORMAL and VISUAL mode
            opleader = {
                ---Line-comment keymap
                line = "vu"
            }
        }
    )

    -- 在插件之后覆盖快捷键
    local keymap = vim.keymap
    -- roll down
    keymap.set(
        "n",
        "<C-j>",
        "<C-d>",
        {
            noremap = true,
            silent = true
        }
    )
    keymap.set(
        "n",
        "<C-s>",
        "<C-d>",
        {
            noremap = true,
            silent = true
        }
    )
    -- roll up
    keymap.set(
        "n",
        "<C-k>",
        "<C-u>",
        {
            noremap = true,
            silent = true
        }
    )
else
    -- vscode
    require("config.keymaps")
    require("plugins.lazynvim-init")
    require("oil").setup()
    require("plugins.cmp-nvim")
    require("plugins/nvim-tree")
    require("plugins/nvim-treesitter")
    require("plugins.cmp-zh")
    require("plugins.autopairs")
    require("plugins.neoformat")
    require("plugins.nvim-toggler")
    require("gitsigns").setup()
    -- require("noice").setup({
    --     lsp = {
    --         -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    --         override = {
    --             ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
    --             ["vim.lsp.util.stylize_markdown"] = true,
    --             ["cmp.entry.get_documentation"] = true -- requires hrsh7th/nvim-cmp
    --
    --     },
    -- })
    require("lualine").setup()
    require("Comment").setup(
        {
            toggler = {
                ---Line-comment toggle keymap
                line = "vu"
            },
            ---LHS of operator-pending mappings in NORMAL and VISUAL mode
            opleader = {
                ---Line-comment keymap
                line = "vu"
            }
        }
    )

    -- 在插件之后覆盖快捷键
    local keymap = vim.keymap
    -- roll down
    keymap.set(
        "n",
        "<C-j>",
        "<C-d>",
        {
            noremap = true,
            silent = true
        }
    )
    keymap.set(
        "n",
        "<C-s>",
        "<C-d>",
        {
            noremap = true,
            silent = true
        }
    )
    -- roll up
    keymap.set(
        "n",
        "<C-k>",
        "<C-u>",
        {
            noremap = true,
            silent = true
        }
    )
end
