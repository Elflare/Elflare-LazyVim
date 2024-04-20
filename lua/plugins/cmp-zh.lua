local cmp_im = require('cmp_im')
local cmp = require("cmp")
vim.keymap.set({'n', 'v', 'c', 'i'}, '<M-;>', function()
    vim.notify(string.format('IM is %s', cmp_im.toggle() and 'enabled' or 'disabled'))
end)
-- 空格上屏
cmp.setup {
    mapping = {
        ['<Space>'] = cmp.mapping(cmp_im.select(), {'i'})
    }
}
cmp_im.setup {
    -- Enable/Disable IM
    enable = false,
    -- IM keyword pattern
    keyword = [[\l\+]],
    -- IM tables path array
    tables = {},
    -- Function to format IM-key and IM-tex for completion display
    format = function(key, text)
        return vim.fn.printf('%-15S %s', text, key)
    end,
    -- Max number entries to show for completion of each table
    maxn = 5
}
cmp_im.setup{
    tables = require('cmp_im_zh').tables{ 'zrlong_dazhu'  }
}

