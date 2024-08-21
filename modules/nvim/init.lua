lua <<EOF
-- Vim options
vim.opt.showmatch = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.breakindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.clipboard = 'unnamed'
vim.opt.number = true
vim.opt.relativenumber = true

-- Keymaps
vim.g.mapleader = " "
vim.keymap.set('n', '<C-s>', ':lua vim.lsp.buf.format()<cr><cmd>write<cr>', { desc = 'Save' })
vim.keymap.set('i', '<C-s>', '<Esc>:lua vim.lsp.buf.format()<cr><cmd>write<cr>i', { desc = 'Save' })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move visuable block up one line" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move visuable block down one line" })
vim.keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi")
vim.keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi")
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move current line up one line" })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move current line down one line" })

vim.keymap.set("n", "<A-J>", ":t.<CR>", { desc = "Duplicate current line" })

-- Move to previous/next
vim.keymap.set('n', '<A-,>', '<Cmd>BufferPrevious<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<A-.>', '<Cmd>BufferNext<CR>', { noremap = true, silent = true })
-- Re-order to previous/next
vim.keymap.set('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<A->>', '<Cmd>BufferMoveNext<CR>', { noremap = true, silent = true })
-- Goto buffer in position...
vim.keymap.set('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<A-0>', '<Cmd>BufferLast<CR>', { noremap = true, silent = true })
-- Pin/unpin buffer
vim.keymap.set('n', '<A-p>', '<Cmd>BufferPin<CR>', { noremap = true, silent = true })
-- Close buffer
vim.keymap.set('n', '<A-c>', '<Cmd>BufferClose<CR>', { noremap = true, silent = true })
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
vim.keymap.set('n', '<C-p>', '<Cmd>BufferPick<CR>', { noremap = true, silent = true })
-- Sort automatically by...
vim.keymap.set('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', { noremap = true, silent = true })

vim.g.papyrus_latex_engine = "pdflatex"
vim.g.papyrus_viewer = "evince"

-- vim.api.nvim_create_autocmd('BufWritePost', {
--  pattern = "*.md",
--  command = ":PapyrusCompile",
--  desc = "Set autocmd for autopandoc",
--  group = vim.api.nvim_create_augroup("setAutoPandocKeymap", {})
--})
EOF
