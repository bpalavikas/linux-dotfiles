-- KEYMAPS

-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- General Keymaps
--new line stay in normal mode
keymap.set("n", "<leader>j", "o<ESC>")
keymap.set("n", "<leader>k", "O<ESC>")

-- saving and new file and quitting 
keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit" })
keymap.set("n", "<leader><leader>q", ":q!<CR>", { desc = "Quit without saving" })
keymap.set("n", "<leader>w", ":w<CR>")
keymap.set("n", "<leader><leader>w", ":wq<CR>")
keymap.set("n", "<leader>nf", ":e")

keymap.set("i", "jj", "<ESC>")

-- indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Commenting out code
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", {noremap = false})
vim.api.nvim_set_keymap("v", "<C-_>", "gc", {noremap = false})

-- clear search highlights
keymap.set("n", "<leader>ch", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- Tabs
keymap.set("n", "<leader><leader>n", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<C-w>", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>u", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader><leader>u", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>nt", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Buffer management
vim.api.nvim_set_keymap("n", "<leader><leader>d", ":bd<CR>", {noremap = false}) -- close current buffer
vim.api.nvim_set_keymap("n", "<leader><leader>f", ":bp<CR>", {noremap = false}) -- go to previous buffer
vim.api.nvim_set_keymap("n", "<leader><leader>g", ":bn<CR>", {noremap = false}) -- go to next buffer

-- Tmux window managment 
-- keymap.set("n", "<C-S>h", "<cmd>TmuxNavigateLeft<CR>")
-- keymap.set("n", "<C-S>l", "<cmd>TmuxNavigateRight<CR>")
-- keymap.set("n", "<C-S>j", "<cmd>TmuxNavigateDown<CR>")
-- keymap.set("n", "<C-S>k", "<cmd>TmuxNavigateUp<CR>")

--Insert mode
keymap.set("i", "<C-S>j", "<down>", { desc = "arrow down in insert mode" })
keymap.set("i", "<C-S>k", "<up>", { desc = "arrow up in insert mode" })

-- set telescope keybinds
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })

-- set nvimtree keybinds 
keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer

-- set harpoon keybinds
keymap.set("n", "<leader><leader>m", ":lua require('harpoon.mark').add_file()<cr>",{ desc = "Mark file with harpoon" })
keymap.set("n", "<leader><leader>k", ":lua require('harpoon.ui').nav_next()<cr>", { desc = "Go to next harpoon mark" })
keymap.set("n", "<leader><leader>j", ":lua require('harpoon.ui').nav_prev()<cr>",{ desc = "Go to previous harpoon mark" })
keymap.set("n", "<leader><leader>h", ":lua require('harpoon.ui').toggle_quick_menu()<cr>", {desc = "toggle menu"})

