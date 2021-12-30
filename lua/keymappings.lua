-- leader key 为空格
vim.g.mapleader = " "

-- 本地变量
local map = vim.api.nvim_set_keymap
local opt = {
    noremap = true,
    silent = true
}

------------------------------- 模式 -----------------------------------
map("i", "jk", "<esc>", opt)
map("i", "kj", "<esc>", opt)

------------------------------- 移动 -----------------------------------
map("n", "<c-h>", "<left>", opt)
map("n", "<c-j>", "<down>", opt)
map("n", "<c-k>", "<up>", opt)
map("n", "<c-l>", "<right>", opt)
map("i", "<c-h>", "<left>", opt)
map("i", "<c-j>", "<down>", opt)
map("i", "<c-k>", "<up>", opt)
map("i", "<c-l>", "<right>", opt)

map("n", "j", "<Plug>(accelerated_jk_gj)", {silent = true})
map("n", "k", "<Plug>(accelerated_jk_gk)", {silent = true})

------------------------------- 编辑 -----------------------------------

------------------------------- buffer -----------------------------------
-- 关闭 buffer
map("n", "<c-d>", ":BufferLinePickClose<cr>", opt)
-- bufferline 左右tab切换
map("n", "<c-h>", ":BufferLineCyclePrev<cr>", opt)
map("n", "<c-l>", ":BufferLineCycleNext<cr>", opt)

------------------------------- 窗口 -----------------------------------
map("n", "<m-h>", "<c-w>h", opt)
map("n", "<m-j>", "<c-w>j", opt)
map("n", "<m-k>", "<c-w>k", opt)
map("n", "<m-l>", "<c-w>l", opt)
map("n", "<m-d>", "<c-w>d", opt)


------------------------------- 文件管理器 -----------------------------------
map('n', '<leader>t', ':NvimTreeFindFileToggle<cr>', {noremap = false, silent = true})

------------------------------- 文件查找 -----------------------------------
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opt)
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opt)
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opt)
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opt)

------------------------------- 代码浏览 -----------------------------------
map("n", "<leader>1", "<cmd>Vista!!<cr>", opt)

-- 代码跳转
map("n", "<leader>lr", "<cmd>Telescope lsp_references<cr>", opt)
map("n", "<leader>lds", "<cmd>Telescope lsp_docoment_symbols<cr>", opt)
map("n", "<leader>lws", "<cmd>Telescope lsp_workspace_symbols<cr>", opt)
map("n", "<leader>ldws", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", opt)
map("n", "<leader>lca", "<cmd>Telescope lsp_code_actions<cr>", opt)
map("n", "<leader>lrca", "<cmd>Telescope lsp_range_code_actions<cr>", opt)
map("n", "<leader>d", "<cmd>Telescope diagnostics<cr>", opt)
map("n", "<leader>li", "<cmd>Telescope lsp_implementions<cr>", opt)
map("n", "<leader>ld", "<cmd>Telescope lsp_definitions<cr>", opt)
map("n", "<leader>ltd", "<cmd>Telescope lsp_type_definitions<cr>", opt)




-- visual模式下缩进代码
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
map("n", "<", "<gv", opt)
map("n", ">", ">gv", opt)
------------------------------------------------------------------
-- windows 分屏快捷键
map("n", "sv", ":vsp<cr>", opt)
map("n", "sh", ":sp<cr>", opt)

-- 关闭当前
map("n", "sc", "<c-w>c", opt)
-- 关闭其他
map("n", "so", "<c-w>o", opt) -- close others

-- 比例控制
map("n", "s>", ":vertical resize +20<cr>", opt)
map("n", "s<", ":vertical resize -20<cr>", opt)
map("n", "s=", "<c-w>=", opt)
map("n", "sj", ":resize +10<cr>", opt)
map("n", "sk", ":resize -10<cr>", opt)

-- alt + hjkl  窗口之间跳转
map("n", "<a-h>", "<c-w>h", opt)
map("n", "<a-j>", "<c-w>j", opt)
map("n", "<a-k>", "<c-w>k", opt)
map("n", "<a-l>", "<c-w>l", opt)

--------------------------------------------------------------------
-- 插件快捷键

-- nvim-treesitter 代码格式化
map("n", "<leader>i", "gg=g", opt)

pluginkeys = {}

-- 代码注释插件
-- see ./lua/plugin-config/comment.lua
pluginkeys.comment = {
    -- normal 模式
    toggler = {
        line = '<leader>c',
        block = '<leader>bc'
    },
    -- visual 模式
    opleader = {
        -- ctrl + / 
        line = '<c-_>',
        block = 'bc'
    }
}

return pluginkeys
