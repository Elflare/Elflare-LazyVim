-- 配置 LSP 服务器
local lspconfig = require("lspconfig")
-- 配置 pylsp 服务器
lspconfig.pylsp.setup {
    settings = {
        pylsp = {
            plugins = {
                autopep8 = {enabled = false},
                pyflakes = {enabled = false},
                yapf = {enabled = false},
                pycodestyle = {enabled = false},
                pylint = {enabled = false},
            },
            -- disableOrganizeImports = true
        },
        -- python = {
        --     analysis = {
        --         -- Ignore all files for analysis to exclusively use Ruff for linting
        --         ignore = {"*"}
        --     }
        -- }
    },
    on_attach = function(client, bufnr)
        -- 绑定快捷键gh为显示文档
        vim.api.nvim_buf_set_keymap(
            bufnr,
            "n",
            "gh",
            "<cmd>lua vim.lsp.buf.hover()<CR>",
            {noremap = true, silent = true}
        )
    end
}
lspconfig.ruff.setup {
    init_options = {
        settings = {
            -- Any extra CLI arguments for `ruff` go here.
            args = {}
        }
    }
}
-- c#
require "lspconfig".csharp_ls.setup {}
