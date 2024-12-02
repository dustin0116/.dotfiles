vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

local map = vim.keymap.set
local opts = { silent = true }

-- nvim-tree
map("n", "<leader>t", ":NvimTreeToggle<cr>", opts)
map("n", "<leader>h", ":NvimTreeFocus<cr>", opts)

-- Telescope
map("n", "<leader>f", "", { desc = "Telescope", silent = true })
map("n", "<leader>ff", "<Cmd>Telescope find_files<CR>", opts)
map("n", "<leader>fG", "<Cmd>Telescope git_files<CR>", opts)
map("n", "<leader>fg", "<Cmd>Telescope live_grep<CR>", opts)
map("n", "<leader>fb", "<Cmd>Telescope buffers<CR>", opts)
map("n", "<leader>fh", "<Cmd>Telescope help_tags<CR>", opts)
map("n", "<leader>fu", "<Cmd>Telescope undo<CR>", opts)

-- Fugitive
map("n", "<leader>g", "", { desc = "Fugitive", silent = true })
map("n", "<leader>gs", "<Cmd>Git<CR>", opts)
map("n", "<leader>gd", "<Cmd>Git diff<CR>", opts)
map("n", "<leader>gp", "<Cmd>Git push<CR>", opts)
map("n", "<leader>gP", "<Cmd>Git pull --rebase<CR>", opts)
map("n", "<leader>gb", "<Cmd>Git blame<CR>", opts)

-- Undotree
map("n", "<leader>u", "<Cmd>UndotreeToggle<CR>", opts)

-- Barbar.nvim
map("n", "<leader>b", "", { desc = "Buffer", silent = true })
-- Move to previous/next
map("n", "<leader>,", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<leader>.", "<Cmd>BufferNext<CR>", opts)
-- Re-order to previous/next
map("n", "<leader><", "<Cmd>BufferMovePrevious<CR>", opts)
map("n", "<leader>>", "<Cmd>BufferMoveNext<CR>", opts)
-- Goto buffer in position...
map("n", "<leader>b1", "<Cmd>BufferGoto 1<CR>", opts)
map("n", "<leader>b2", "<Cmd>BufferGoto 2<CR>", opts)
map("n", "<leader>b3", "<Cmd>BufferGoto 3<CR>", opts)
map("n", "<leader>b4", "<Cmd>BufferGoto 4<CR>", opts)
map("n", "<leader>b5", "<Cmd>BufferGoto 5<CR>", opts)
map("n", "<leader>b6", "<Cmd>BufferGoto 6<CR>", opts)
map("n", "<leader>b7", "<Cmd>BufferGoto 7<CR>", opts)
map("n", "<leader>b8", "<Cmd>BufferGoto 8<CR>", opts)
map("n", "<leader>b9", "<Cmd>BufferGoto 9<CR>", opts)
map("n", "<leader>b0", "<Cmd>BufferLast<CR>", opts)
-- Pin/unpin buffer
map("n", "<leader>p", "<Cmd>BufferPin<CR>", opts)
-- Close buffer
map("n", "<leader>c", "<Cmd>BufferClose<CR>", opts)
-- Magic buffer-picking mode
map("n", "<C-p>", "<Cmd>BufferPick<CR>", opts)
-- Sort automatically by...
map("n", "<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
map("n", "<Space>bd", "<Cmd>BufferOrderByDirectory<CR>", opts)
map("n", "<Space>bl", "<Cmd>BufferOrderByLanguage<CR>", opts)
map("n", "<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)

-- Trouble.nvim
map("n", "<leader>x", "", { desc = "Trouble", silent = true })
map(
	"n",
	"<leader>xx",
	"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
	{ desc = "Buffer Diagnostics (Trouble)", silent = true }
)
map("n", "<leader>xX", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)", silent = true })
map("n", "<leader>xs", "<cmd>Trouble symbols toggle focus=false<cr>", { desc = "Symbols (Trouble)", silent = true })
map(
	"n",
	"<leader>xl",
	"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
	{ desc = "TLSP Definitions / references / ... (Trouble)", silent = true }
)
map("n", "<leader>xL", "<cmd>Trouble loclist toggle<cr>", { desc = "Location List (Trouble)", silent = true })
map("n", "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix List (Trouble)", silent = true })
