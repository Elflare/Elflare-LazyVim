local opt = vim.opt
-- 行号
opt.relativenumber = true
opt.number = true
-- 缩进
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.list = true
-- 防止包裹
opt.wrap = true
-- 光标行
opt.cursorline = true
-- 启用鼠标
opt.mouse:append("a")
-- 禁用交换文件
vim.opt.swapfile = false
-- 默认新窗口右和下

opt.splitright = true
opt.splitbelow = true
-- 搜索
opt.ignorecase = true
opt.smartcase = true

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"
-- 剪贴板
opt.clipboard = "unnamed"
-- 设置 Neovim 的编码为 UTF-8
vim.g.python_io_encoding = 'utf-8'

opt.fileencodings = "UTF-8"
opt.encoding = "UTF-8"
-- opt.termencoding = "utf-8"
opt.fileencoding = "UTF-8"
vim.g.lang = {
    name = "zh_CN",
    encoding = "utf-8"
}

-- neovide
if vim.fn.exists "g:neovide" then
    vim.cmd([[
  set guifont=CodeNewRoman\ Nerd\ Font:h16
  ]])
end

-- py3路径
vim.g.python3_host_prog = 'python.exe'

