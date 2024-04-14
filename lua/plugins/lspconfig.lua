
-- 配置 LSP 服务器
local lspconfig = require('lspconfig')

-- 配置 pylsp 服务器
lspconfig.pylsp.setup {
  settings = {
    pylsp = {
      plugins = {
        pyflakes = { enabled = true },
        pycodestyle = { enabled = false },
        pylint = { enabled = true },
        jedi_completion = { fuzzy = true },
        -- 其他 pylsp 插件配置...
      },
    },
  },
 on_attach = function(client, bufnr)
    -- 绑定快捷键gh为显示文档
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', {noremap = true, silent = true})
  end,
}

-- 可以添加更多的 LSP 服务器配置...
