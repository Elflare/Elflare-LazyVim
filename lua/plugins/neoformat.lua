-- 设置 neoformat 的 black 配置
vim.g.neoformat_python_black = {
  exe = 'black',
  args = {'-q', '-'},
  stdin = 1
}

-- 启用 ruff 作为 Python 的格式化工具
vim.g.neoformat_enabled_python = {'ruff'}


-- 如果需要，设置 formatprg 的等效命令
vim.g.neoformat_try_formatprg = 1
vim.g.neoformat_try_node_exe = 1
