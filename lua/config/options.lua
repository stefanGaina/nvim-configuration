vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = false
vim.opt.list = true
vim.opt.listchars = {
    tab = '→ ',
    trail = '·',
    extends = '»',
    precedes = '«',
    space = '·',
}

vim.o.number = true
vim.o.mouse = "a"
vim.o.clipboard = "unnamedplus"
vim.o.showmatch = true
vim.o.background = "dark"

vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>")
