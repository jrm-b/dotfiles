vim.g.mapleader = " "

local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.expandtab = true
opt.cursorline = true
opt.clipboard = "unnamedplus"

vim.keymap.set("n", "<Esc>", ":nohl<CR>")
vim.keymap.set("n", "<C-s>", ":w<CR>")

require("config.lazy")
