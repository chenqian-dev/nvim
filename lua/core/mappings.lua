
local map = vim.api.nvim_set_keymap
-- global
------------------------------------------------------------------
map("n", "<c-s>", ":w <CR>", {noremap = true, silent = true}) -- ctrl + s to save file

-- move
------------------------------------------------------------------
map("i", "<c-h>", "<left>", {noremap = true, silent = true})
map("i", "<c-j>", "<down>", {noremap = true, silent = true})
map("i", "<c-k>", "<up>", {noremap = true, silent = true})
map("i", "<c-l>", "<right>", {noremap = true, silent = true})

-- buffer
------------------------------------------------------------------
map("n", "<c-d>", ":lua require('core.utils').close_buffer() <CR>", {noremap = true, silent = true})

-- window
------------------------------------------------------------------
map("n", "<c-h>", "<c-w>h", {noremap = true, silent = true})
map("n", "<c-j>", "<c-w>j", {noremap = true, silent = true})
map("n", "<c-k>", "<c-w>k", {noremap = true, silent = true})
map("n", "<c-l>", "<c-w>l", {noremap = true, silent = true})
map("n", "<c-d>", "<c-w>d", {noremap = true, silent = true})
-- 分屏快捷键
map("n", "sv", ":vsp<cr>", {noremap = true, silent = true})
map("n", "sh", ":sp<cr>", {noremap = true, silent = true})
-- 比例控制
map("n", "s>", ":vertical resize +20<cr>", {noremap = true, silent = true})
map("n", "s<", ":vertical resize -20<cr>", {noremap = true, silent = true})
map("n", "s=", "<c-w>=", {noremap = true, silent = true})
map("n", "sj", ":resize +10<cr>", {noremap = true, silent = true})
map("n", "sk", ":resize -10<cr>", {noremap = true, silent = true})

-- terminal
------------------------------------------------------------------
map("t", "jk", "<C-\\><C-n>", {noremap = true, silent = true})
-- hide a term from within terminal mode
map("t", "JK", "<C-\\><C-n> :lua require('core.utils').close_buffer() <CR>", {noremap = true, silent = true})
-- Open terminals
map("n", "<leader>h", ":execute 15 .. 'new +terminal' | let b:term_type = 'hori' | startinsert <CR>", {noremap = true, silent = true})
map("n", "<leader>v", ":execute 'vnew +terminal' | let b:term_type = 'vert' | startinsert <CR>", {noremap = true, silent = true})
map("n", "<leader>w", ":execute 'terminal' | let b:term_type = 'wind' | startinsert <CR>", {noremap = true, silent = true})

-- plugins
------------------------------------------------------------------
local M = {}
M.accelerated_jk_gj = function()
    map("n", "j", "<Plug>(accelerated_jk_gj)", {silent = true})
    map("n", "k", "<Plug>(accelerated_jk_gk)", {silent = true})
end

M.bufferline = function()
    map("n", "<TAB>", ":BufferLineCycleNext <CR>", {noremap = true, silent = true})
    map("n", "<S-TAB>", ":BufferLineCyclePrev <CR>", {noremap = true, silent = true})
end

M.comment = function()
    map("n", "<leader>/", ":lua require('Comment.api').toggle_current_linewise()<CR>", {noremap = true, silent = true})
    map("v", "<leader>/", ":lua require('Comment.api').toggle_linewise_op(vim.fn.visualmode())<CR>", {noremap = true, silent = true})
end

M.telescope = function()
    map("n", "<leader>te", ":Telescope terms <CR>", {noremap = true, silent = true})
    map("n", "<leader>fb", ":Telescope buffers <CR>", {noremap = true, silent = true})
    map("n", "<leader>ff", ":Telescope find_files <CR>", {noremap = true, silent = true})
    map("n", "<leader>fa", ":Telescope find_files follow=true no_ignore=true hidden=true <CR>", {noremap = true, silent = true})
    map("n", "<leader>gc", ":Telescope git_commits <CR>", {noremap = true, silent = true})
    map("n", "<leader>gs", ":Telescope git_status <CR>", {noremap = true, silent = true})
    map("n", "<leader>fh", ":Telescope help_tags <CR>", {noremap = true, silent = true})
    map("n", "<leader>lg", ":Telescope live_grep <CR>", {noremap = true, silent = true})
    map("n", "<leader>of", ":Telescope oldfiles <CR>", {noremap = true, silent = true})
    map("n", "<leader>th", ":Telescope themes <CR>", {noremap = true, silent = true})
    
    map("n", "<leader>lr", "<cmd>Telescope lsp_references<cr>", {noremap = true, silent = true})
    map("n", "<leader>lds", "<cmd>Telescope lsp_docoment_symbols<cr>", {noremap = true, silent = true})
    map("n", "<leader>lws", "<cmd>Telescope lsp_workspace_symbols<cr>", {noremap = true, silent = true})
    map("n", "<leader>ldws", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", {noremap = true, silent = true})
    map("n", "<leader>lca", "<cmd>Telescope lsp_code_actions<cr>", {noremap = true, silent = true})
    map("n", "<leader>lrca", "<cmd>Telescope lsp_range_code_actions<cr>", {noremap = true, silent = true})
    map("n", "<leader>d", "<cmd>Telescope diagnostics<cr>", {noremap = true, silent = true})
    map("n", "<leader>li", "<cmd>Telescope lsp_implementions<cr>", {noremap = true, silent = true})
    map("n", "<leader>ld", "<cmd>Telescope lsp_definitions<cr>", {noremap = true, silent = true})
    map("n", "<leader>ltd", "<cmd>Telescope lsp_type_definitions<cr>", {noremap = true, silent = true})
end

M.nvimtree = function()
    map("n", "<C-n>", ":NvimTreeFindFileToggle <CR>", {noremap = true, silent = true})
end

M.lspconfig = function()
    map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", {noremap = true, silent = true})
    map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", {noremap = true, silent = true})
    map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", {noremap = true, silent = true})
    map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", {noremap = true, silent = true})
    map("n", "gk", "<cmd>lua vim.lsp.buf.signature_help()<CR>", {noremap = true, silent = true})
    map("n", "<leader>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", {noremap = true, silent = true})
    map("n", "<leader>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", {noremap = true, silent = true})
    map("n", "<leader>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", {noremap = true, silent = true})
    map("n", "<leader>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", {noremap = true, silent = true})
    map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", {noremap = true, silent = true})
    map("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", {noremap = true, silent = true})
    map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", {noremap = true, silent = true})
    map("n", "ge", "<cmd>lua vim.diagnostic.open_float()<CR>", {noremap = true, silent = true})
    map("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", {noremap = true, silent = true})
    map("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", {noremap = true, silent = true})
    map("n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", {noremap = true, silent = true})
    map("n", "<leader>fm", "<cmd>lua vim.lsp.buf.formatting()<CR>", {noremap = true, silent = true})
end

M.vista = function()
    map("n", "<leader>1", "<cmd>Vista!!<cr>", {noremap = true, silent = true})
end

return M