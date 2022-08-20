-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",


---------------------- Normal ----------------------

-- Enter
keymap("n", "<Enter>", "i<Enter><Esc>", opts)
-- Add line below
keymap("n", "<M-Enter>", "o<Esc>", opts)

-- Copy line below
keymap("n", "<M-2>", "yyp", opts)
-- Copy line above
keymap("n", "<M-3>", "yyp", opts)

-- Delete a word no matter the cursor position
keymap("n", "dw", "daw", opts)
-- Change inner word no matter the cursor position
keymap("n", "cw", "ciw", opts)

-- Save
keymap("n", "<C-s>", ":w<CR>", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-M-k>", ":resize -2<CR>", opts)
keymap("n", "<C-M-j>", ":resize +2<CR>", opts)
keymap("n", "<C-M-l>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-M-h>", ":vertical resize +2<CR>", opts)

-- up/down line
keymap("n", "<M-j>", "ddp", opts) -- move line below
keymap("n", "<M-k>", "dd<UP><S-p>", opts) -- move line above


-- jump to by paragraph
keymap("n", "<M-[>", "<S-{>", opts) -- move line above
keymap("n", "<M-]>", "<S-}>", opts) -- move line above

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Close buffers
keymap("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)

-- Swap go to start of the line
keymap("n", "0", "^", opts)
keymap("n", "^", "0", opts)

-- Tab
keymap("n", "<Tab>", "v><ESC>^", opts)
keymap("n", "<S-Tab>", "v<<ESC>^", opts)


---------------------- Visual ----------------------
-- Better paste
keymap("v", "p", '"_dP', opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)


---------------------- Insert ----------------------

-- Press kj fast to exit
keymap("i", "kj", "<ESC>", opts)

-- Save file
keymap("i", "<C-s>", "<ESC>:w<CR>", opts)

-- Undo
keymap("i", "<f2>", "<ESC>u i", opts)
-- Redo
keymap("i", "<f3>", "<ESC> <C-r> i", opts)

-- Disable arrow keys
keymap("i", "<M-k>", "<Up>", opts)
keymap("i", "<M-j>", "<Down>", opts)
keymap("i", "<M-h>", "<Left>", opts)
keymap("i", "<M-l>", "<Right>", opts)


---------------------- Plugins ----------------------

-- markdown-preview
keymap('n', '<leader>mp', '<Cmd>MarkdownPreviewToggle<CR>', opts)

-- bufferline
keymap('n', '<leader>1', '<Cmd>BufferLineGoToBuffer 1<CR>', opts)
keymap('n', '<leader>2', '<Cmd>BufferLineGoToBuffer 2<CR>', opts)
keymap('n', '<leader>3', '<Cmd>BufferLineGoToBuffer 3<CR>', opts)
keymap('n', '<leader>4', '<Cmd>BufferLineGoToBuffer 4<CR>', opts)
keymap('n', '<leader>5', '<Cmd>BufferLineGoToBuffer 5<CR>', opts)
keymap('n', '<leader>6', '<Cmd>BufferLineGoToBuffer 6<CR>', opts)
keymap('n', '<leader>7', '<Cmd>BufferLineGoToBuffer 7<CR>', opts)
keymap('n', '<leader>8', '<Cmd>BufferLineGoToBuffer 8<CR>', opts)
keymap('n', '<leader>9', '<Cmd>BufferLineGoToBuffer 9<CR>', opts)
keymap('n', '<leader>$', '<Cmd>BufferLineGoToBuffer -1<CR>', opts)

-- code-runner
keymap('n', '<leader>r', ':RunCode<CR>', opts)
keymap('n', '<leader>rf', ':RunFile<CR>',opts)
keymap('n', '<leader>rft', ':RunFile tab<cr>', opts)
keymap('n', '<leader>rp', ':RunProject<Cr>', opts)
keymap('n', '<leader>rc', ':runclose<cr>', opts)
keymap('n', '<leader>crf', ':CRFiletype<cr>', opts)
keymap('n', '<leader>crp', ':CRProjects<cr>', opts)

-- null-ls
keymap("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.formatting()<cr>", opts)

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>tf", ":NvimTreeFocus<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>ft", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)

-- Git
keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts)
keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>')

-- DAP
keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<leader>do", "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)
