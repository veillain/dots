-- Remaps
local remap = vim.keymap.set
local default = { noremap = true, silent = true }

-- Custom Command
vim.cmd([[
    cnoreabbrev sw :SudaWrite<cr>
    cnoreabbrev ws :SudaWrite<cr>

    cnoreabbrev sq :SudaWrite<cr>
    cnoreabbrev qs :SudaWrite<cr>

    cnoreabbrev fw :SudaWrite<cr>
    cnoreabbrev wf :SudaWrite<cr>


    cnoreabbrev fq :SudaWrite<cr>
    cnoreabbrev qf :SudaWrite<cr>
]])

-- leader
remap("n", " ", "<nop>", { silent = true, remap = false })
remap("n", "<bs>", "<nop>", { silent = true, remap = false })
vim.g.mapleader = " "

-- capital U for redo
remap("n", "U", "<c-r>")

-- leader + / remove highlight
remap("n", "<leader>/", "<cmd>noh<cr>")
remap("n", "gh", "<cmd>noh<cr>")

-- p doesn't override clipboard
remap("x", "<leader>p", '"_dP')
-- x doesn't override clipboard
remap("n", "x", '"_x')
remap("n", "X", '"_X')

-- Unmap ctrl+q (visual block, same as ctrl+v)
remap("n", "<c-q>", "", default)
-- Escape to Esc-l
remap("i", "<esc>", "<esc>l", default)

-- Switch buffer and windows
remap("n", "gb", "<cmd>bn<cr>")
remap("n", "gB", "<cmd>bp<cr>")
remap("n", "gw", "<c-w>w")
remap("n", "gW", "<c-w>W")

-- control g to bottom of the file
remap("n", "<c-g>", "<s-g>")

-- Floaterminal
remap({ "n", "t" }, "<leader>tt", "<cmd>Floaterminal<cr>")
