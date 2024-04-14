-- 设置 neoformat 的 black 配置
vim.g.neoformat_python_black = {
  exe = 'black',
  args = {'-q', '-'},
  stdin = 1
}

vim.g.neoformat_json_prettier = {
  exe = 'prettier',
  args = {'-q', '-'},
  stdin = 1
}
-- 启用 black 作为 Python 的格式化工具
vim.g.neoformat_enabled_python = {'black'}
-- json
vim.g.neoformat_enabled_json = {'json'}
