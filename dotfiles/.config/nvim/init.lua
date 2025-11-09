vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.formatoptions:remove({"t", "c"})
vim.opt.hlsearch = true
vim.opt.compatible = false
vim.opt.number = true
vim.opt.ruler = true
vim.opt.showmatch = true
vim.opt.tabpagemax = 100
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.termguicolors = true
vim.cmd.syntax("on")
vim.cmd.source("~/.config/nvim/colorscheme.vim")

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>l", ":tabn<CR>", {silent = true})
vim.keymap.set("n", "<leader>h", ":tabp<CR>", {silent = true})
vim.keymap.set("n", "./", ":nohlsearch<CR>", {silent = true})

vim.api.nvim_create_user_command("Fp", function()
  print(vim.fn.expand("%:p"))
end, {})

vim.keymap.set("i", "\"", "\"\"<Left>")
vim.keymap.set("i", "'", "''<Left>")
vim.keymap.set("i", "(", "()<Left>")
vim.keymap.set("i", "[", "[]<Left>")
vim.keymap.set("i", "{", "{}<Left>")
vim.keymap.set("i", "{;", "{\n};<Esc>O")
vim.keymap.set("i", "{<CR>", "{\n}<Esc>O")

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  pattern = ".virc",
  command = "set filetype=vim",
})

require("config.lazy")
