# 我的nvim-config
## 记下快捷键免得忘
### 全局
|快捷键|功能|备注|
|------|----|----|
|`<C-z>`|撤销 |i 模式下也可|
|`J`|将下行的缩回来 |
|`K`|换行 |
|`H`|home |
|`L`|end |
|`<leader>nh`|去高亮 |
|`<leader>v`|搜中文 |
|`dH`|从该行往前删到头 |
|`dL`|从该行往后删到尾 |
### save-session
配置文件在 `plugins.save-session`
|快捷键|功能|备注|
|------|----|----|
|`<leader> s1 - s3`|保存session|
|`<leader> l1 - l3`|读取session|每次打开自动会读取 s1 的|
### NvimTree
|快捷键|功能|备注|
|------|----|----|
|`<leader> e`|切换 `NvimTree` 的窗口开关|
|`<leader> o`|打开 `NvimTree`|
|`<C-Left><C-Right><C-Tab><C-S-Tab>`|切换 `NvimTree` 的窗口|
|`<leader> p`|选择`NvimTree` 的窗口|
|`<leader> c`|选择关闭`NvimTree` 的窗口|
|`<C-1>` 到 `<C-6>`|选择`NvimTree` 的窗口 |目前只做了 1 - 6|
### lsp 语法提示
|快捷键|功能|
|------|----|
|`<leader> n` |下一个语法错误提示|
|`<leader> q` |打开语法错误提示列表窗口|
### Markdowd 预览
|快捷键|功能|
|------|----|
|`<leader> m` |`Markdowd` 预览|
### Telescope
配置文件在 `plugins.telescope`
|快捷键|功能|
|------|----|
|`<C-p>` |查找文件|
|`<leader> fg` |查找文件中的内容|
|`<leader> fh` |查找 help tag|
### cmp
配置文件在 `plugins.nvim-config`
|快捷键|功能|
|------|----|
|`<C-k>` |选择上一个|
|`<C-j>` |选择下一个|
|`<A-.>` |出现补全|
|`<A-,>` |取消补全|
|`<Tab>` |确认第一个|
|`<Space>` |确认第一个中文|
### nvim-Treesitter
配置文件在 `plugins.nvim-treesitter`
<br> **注:**  目前只做了 python 的
|快捷键|功能|
|------|----|
|`<CR>` |选择一段|
|`<BS>` |反选|
|`<Tab>` |选择整个函数|
### neoformat
配置文件在 `plugins.neoformat`
<br> **注:**  目前只做了 python 的, 用的是 black
|快捷键|功能|
|------|----|
|`<C-F>` |格式化|
### lspconfg
配置文件在 `plugins.lspconfig`
<br> **注:**  
- 目前只做了 python 的, 用的是 pylsp
- 在option 中的 `vim.g.python3_host_prog` 配置py3路径 (有环境变量就直接配 `python`)

|快捷键|功能|
|------|----|
|`gh` |查看文档|
## 其他东西以后再说
--- 
