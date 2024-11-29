require("conform").setup(
    {
        formatters_by_ft = {
            lua = { "stylua" },
            -- Conform will run multiple formatters sequentially
            python = {"ruff_format"},
            yaml = { "prettier" },
            json = { "prettier" },
        },
		formatters = {
    -- stylua= {
    --   command = "stylua",
    --   args = function(ctx)
    --     return { ctx.filename } -- 传入当前文件名
    --   end,
    --   stdin = false, -- stylua 不需要从 stdin 读取内容时设置为 false
    -- },
  },
        -- format_on_save = {
        --     -- These options will be passed to conform.format()
        --     timeout_ms = 500,
        --     lsp_format = "fallback"
        -- }
    }
)
-- require("conform").formatters.stylua = {
--   command = "stylua",
-- }
