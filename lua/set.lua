vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME" .. "/.vim/undodir")
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
-- vim.opt.isfname:append("@-@")
--
vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

-- Move selected text up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

-- Append the next line to the current one - leaves a vim mark on the "z" key
vim.keymap.set("n", "J", "mzJ`z")

-- Scroll up and down while leaving the cursor vertically centered for easier tracking
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- When iterating through search terms, keep the cursor vertically centered for easier tracking
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste over highlighted term without overwriting the paste register with what was pasted over
vim.keymap.set("x", "<leader>p", "\"_dP")
-- Delete to the void register instead of overwriting the paste register with what was deleted
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Space-Y to copy to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Toggle wrapping
vim.keymap.set("n", "<leader>tw", function()
    if vim.inspect(vim.opt.wrap["_value"]) == "true" then -- if wrap value is true
      vim.o.wrap = false
    else
      vim.o.wrap = true
    end
  end, {desc = 'Turn on soft wrapping'})

vim.keymap.set("n", "<leader>xb", "<cmd>!python3 /home/r/wo/bibq.py %:p<cr>", {desc = "bibq this file on linux"})
vim.keymap.set("n", "<leader>xw", "<cmd>!py C:\\Users\\R\\wo\\bibq.py %:p<cr>", {desc = "bibq this file on windows"})

