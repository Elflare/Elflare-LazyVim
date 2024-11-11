-- 设置保存 session 的快捷键
vim.api.nvim_set_keymap('n', '<leader>s1', '<cmd>lua saveSession(1)<CR>', {
    noremap = true,
    silent = true
})
vim.api.nvim_set_keymap('n', '<leader>s2', '<cmd>lua saveSession(2)<CR>', {
    noremap = true,
    silent = true
})
vim.api.nvim_set_keymap('n', '<leader>s3', '<cmd>lua saveSession(3)<CR>', {
    noremap = true,
    silent = true
})
-- 设置读取 session 的快捷键
vim.api.nvim_set_keymap('n', '<leader>l1', '<cmd>lua loadSession(1)<CR>', {
    noremap = true,
    silent = true
})
vim.api.nvim_set_keymap('n', '<leader>l2', '<cmd>lua loadSession(2)<CR>', {
    noremap = true,
    silent = true
})
vim.api.nvim_set_keymap('n', '<leader>l3', '<cmd>lua loadSession(3)<CR>', {
    noremap = true,
    silent = true
})

-- 定义 SaveSession 函数
function saveSession(number)
    -- 获取 session 文件的路径
    local session_path = vim.fn.expand('~') .. [[\AppData\Local\nvim\session]] .. number .. ".vim"

    -- 保存 session
    vim.cmd('mksession! ' .. session_path)

    -- 提示消息
    vim.api.nvim_echo({{'Session saved to ' .. session_path, 'Normal'}}, true, {})
end
function loadSession(number)
    local session_file = vim.fn.expand('~') .. [[\AppData\Local\nvim\session]] .. number .. ".vim"
    -- 检查文件是否存在
    if vim.fn.filereadable(session_file) == 1 then
        -- 如果文件存在，则执行 :source 命令加载会话
        vim.cmd('source ' .. session_file)
    else
        -- 如果文件不存在，则Ruturn
        return
        -- vim.api.nvim_err_writeln("Session file not found: " .. session_file)
    end
end
-- 在启动 Neovide 时加载上次会话
if #vim.fn.argv() == 0 then
    local session_file = vim.fn.expand('~') .. [[\AppData\Local\nvim\session1]] .. ".vim"
    -- 检查文件是否存在
    if vim.fn.filereadable(session_file) == 1 then
        -- 如果文件存在，则执行 :source 命令加载会话
        vim.cmd([[autocmd VimEnter * source ]] .. vim.fn.expand('~') .. [[\AppData\Local\nvim\session1.vim]])
    else
        -- 如果文件不存在，则Ruturn
        return
    end
end
