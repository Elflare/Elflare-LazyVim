local cmp = require("cmp")
local lspkind = require("lspkind")
cmp.setup(
    {
        -- 设置代码片段引擎，用于根据代码片段补全
        snippet = {
            expand = function(args)
                vim.fn["vsnip#anonymous"](args.body)
            end
        },
        window = {},
        mapping = {
            -- shift+tab 选择上一个
            ["<S-Tab>"] = cmp.mapping.select_prev_item(),
            -- 选择下一个
            ["<Tab>"] = cmp.mapping.select_next_item(),
            -- ['<C-j>'] = cmp.mapping.select_next_item(),
            -- 出现补全
            ["<A-.>"] = cmp.mapping(cmp.mapping.complete(), {"i", "c"}),
            -- 取消补全
            ["<A-,>"] = cmp.mapping(
                {
                    i = cmp.mapping.abort(),
                    c = cmp.mapping.close()
                }
            ),
            -- 确认使用某个补全项
            -- ['<Tab>'] = cmp.mapping.confirm({
            --     select = true,
            --     behavior = cmp.ConfirmBehavior.Replace
            -- }),

            -- -- 向上翻页
            ["<C-u>"] = cmp.mapping.scroll_docs(-4),
            ["<C-b>"] = cmp.mapping.scroll_docs(-4),
            ["<C-k>"] = cmp.mapping.scroll_docs(-4),
            -- 向下翻页
            ["<C-d>"] = cmp.mapping.scroll_docs(4),
            ["<C-f>"] = cmp.mapping.scroll_docs(4),
            ["<C-j>"] = cmp.mapping.scroll_docs(4)
        },
        -- 补全来源
        sources = cmp.config.sources(
            {
                {
                    name = "nvim_lsp"
                },
                -- {
                --     name = "vsnip"
                -- },
                {
                    name = "buffer",
                    max_item_count = 10
                },
                {
                    name = "path"
                },
                {
                    name = "IM"
                },
                -- 形参补全
                {name = "nvim_lsp_signature_help"}
            }
        ),
        -- 根据文件类型来选择补全来源
        cmp.setup.filetype(
            {"text", "yaml"},
            {
                sources = cmp.config.sources(
                    {
                        {
                            name = "IM"
                        }
                    }
                )
            }
        ),
        -- 命令模式下输入 `/` 启用补全
        cmp.setup.cmdline(
            "/",
            {
                mapping = cmp.mapping.preset.cmdline(),
                sources = {
                    {
                        name = "IM"
                    }
                }
            }
        ),
        -- 命令模式下输入 `:` 启用补全
        cmp.setup.cmdline(
            ":",
            {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources(
                    {
                        {
                            name = "path"
                        },
                        {
                            name = "cmdline"
                        },
                        {
                            name = "IM"
                        }
                    }
                )
            }
        ),
        -- 设置补全显示的格式
        formatting = {
            format = lspkind.cmp_format(
                {
                    with_text = true,
                    maxwidth = 50,
                    before = function(entry, vim_item)
                        vim_item.menu = "[" .. string.upper(entry.source.name) .. "]"
                        return vim_item
                    end
                }
            )
        }
    }
)
