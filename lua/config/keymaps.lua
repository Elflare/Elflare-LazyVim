vim.g.mapleader = " "
local keymap = vim.keymap
-- 插入模式
-- keymap.set("i", "jj", "<ESC>")
-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")
-- flash搜中文
keymap.set("n", "<leader>v", "/[\\u4E00-\\u9FA5]")
-- home end
keymap.set("n", "H", "^")
keymap.set("n", "dH", "d^")
keymap.set("v", "H", "^")
keymap.set("n", "L", "$")
keymap.set("n", "dL", "d$")
keymap.set("v", "L", "$")
keymap.set("i", "<C-a>", "<Home>")
keymap.set("i", "<C-e>", "<End>")
-- 复制全部
keymap.set("n", "gy", ":%y<CR>")
-- roll down
keymap.set({"n", "v"}, "<C-j>", "<C-d>", {noremap = true, silent = true})
keymap.set({"n", "v"}, "<C-e>", "4<C-e>", {noremap = true, silent = true})
-- roll up
keymap.set({"v", "n"}, "<C-k>", "<C-u>", {noremap = true, silent = true})
keymap.set({"n", "v"}, "<C-y>", "4<C-y>", {noremap = true, silent = true})
-- 删除整行
-- 设置插入模式下的键映射
keymap.set("i", "<C-D>", "<Esc>ddi")
keymap.set("n", "<C-h>", "^")
keymap.set("n", "<C-l>", "$")
keymap.set(
    "n",
    "-",
    "<CMD>Oil<CR>",
    {
        desc = "Open parent directory"
    }
)
--  f5 运行py
keymap.set("n", "<F5>", ":!python -u %<CR>")
-- 设置 Alt + 上下键来移动代码行
keymap.set("n", "<A-Up>", ":m .-2<CR>", {silent = true})
keymap.set("n", "<A-Down>", ":m .+1<CR>", {silent = true})
-- i 模式也可
keymap.set("i", "<A-Up>", "<Esc>:m .-2<CR>a", {silent = true})
keymap.set("i", "<A-Down>", "<Esc>:m .+1<CR>a", {silent = true})

-- 设置 Alt + 上下键在可视模式下移动选中的代码行
keymap.set("v", "<A-Up>", [=[:m '<-2<CR>gv=gv]=], {silent = true})
keymap.set("v", "<A-Down>", [=[:m '>+1<CR>gv=gv]=], {silent = true})
-- 复制一行
keymap.set("n", "<A-S-Up>", ":t-1<CR>", {noremap = true})
keymap.set("n", "<A-S-Down>", ":t.<CR>", {noremap = true})
keymap.set("i", "<A-S-Up>", "<Esc>:t.-1<CR>i", {noremap = true})
keymap.set("i", "<A-S-Down>", "<Esc>:t.<CR>i", {noremap = true})

-- i 模式下粘贴一行
keymap.set("i", "<C-v>", "<Esc>pa", {noremap = true})

-- v 模式下复制
keymap.set("v", "<C-c>", "y", {noremap = true})
-- ctrl + w -> :wq
-- keymap.set("v", "<C-w>", "<Esc>ZZ", {noremap = true})
-- keymap.set("i", "<C-w>", "<Esc>ZZ", {noremap = true})
-- keymap.set("n", "<C-w>", "ZZ", {noremap = true})

-- ctrl z 撤销
keymap.set("n", "<C-z>", "u", {noremap = true})
keymap.set("i", "<C-z>", "<Esc>ua", {noremap = true})

-- K 换行
keymap.set("n", "K", "i<CR><Esc>", {noremap = true})
-- ---------- 插件 ---------- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>o", ":NvimTreeOpen ")
-- 切换buffer
keymap.set("n", "<C-Right>", ":bnext<CR>")
keymap.set("n", "<C-Left>", ":bprevious<CR>")
keymap.set("n", "<C-Tab>", ":bnext<CR>")
keymap.set("n", "<C-S-Tab>", ":bprevious<CR>")
keymap.set("n", "<leader>p", ":BufferLinePick<CR>")
keymap.set("n", "<leader>c", ":BufferLinePickClose<CR>")
keymap.set("n", "<C-1>", ":BufferLineGoToBuffer 1<CR>")
keymap.set("n", "<C-2>", ":BufferLineGoToBuffer 2<CR>")
keymap.set("n", "<C-3>", ":BufferLineGoToBuffer 3<CR>")
keymap.set("n", "<C-4>", ":BufferLineGoToBuffer 4<CR>")
keymap.set("n", "<C-5>", ":BufferLineGoToBuffer 5<CR>")
keymap.set("n", "<C-6>", ":BufferLineGoToBuffer 6<CR>")
-- 在 ctrl+shift+f格式化
keymap.set("n", "<C-S-f>", ":Neoformat<CR>")
keymap.set("i", "<C-S-f>", "<ESC>:Neoformat<CR>a")
keymap.set("n", "<leader>fo", ":Neoformat<CR>")
-- 在 mundo
keymap.set("n", "<leader>u", ":MundoToggle<CR>")
keymap.set("n", "<F2>", ":IncRename ")
keymap.set("i", "<F2>", "<ESC>:IncRename ")
keymap.set("v", "<F2>", "<ESC>:IncRename ")
-- lsp 语法错误提示
-- keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
keymap.set("n", "<leader>n", vim.diagnostic.goto_prev, opts)
-- keymap.set('n', '<leader>u', vim.diagnostic.goto_next, opts)
keymap.set("n", "<leader>q", vim.diagnostic.setloclist, opts)
-- markdown preview
keymap.set("n", "<leader>d", ":MarkdownPreview<CR>")
