local kmp = vim.keymap

-- Go to project view
kmp.set("n", "<leader>pv", vim.cmd.Ex, { desc = "[P]roject [V]iew" })

-- Set redo command
kmp.set("n", "U", "<cmd>redo<CR>")
kmp.set("n", "<C-R>", '<cmd>echo "Use U to redo"<CR>')

-- Move selected text in visual mode
kmp.set("v", "<tab>", ">gv")
kmp.set("v", "<s-tab>", "<gv")
kmp.set("v", "J", ":m '>+1<CR>gv=gv")
kmp.set("v", "K", ":m '<-2<CR>gv=gv")

-- Change all word occurrences in file (super cool!)
kmp.set("n", "<leader>c", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gc<Left><Left><Left>]])

-- Add yank to default buffer (not vim buffer)
kmp.set("n", "<leader>y", '"+y')
kmp.set("v", "<leader>y", '"+y')
kmp.set("n", "<leader>Y", '"+Y')

-- Centralize cursor when moving
kmp.set("n", "j", "jzz")
kmp.set("n", "k", "kzz")
kmp.set("n", "<C-u>", "<C-u>zz")
kmp.set("n", "<C-d>", "<C-d>zz")
kmp.set("n", "n", "nzzzv")
kmp.set("n", "N", "Nzzzv")
kmp.set("n", "<C-o>", "<C-o>zz")
kmp.set("n", "<C-i>", "<C-i>zz")

kmp.set({ "i", "n" }, "<left>", '<cmd>echo "Use h to move!!"<CR>')
kmp.set({ "i", "n" }, "<right>", '<cmd>echo "Use l to move!!"<CR>')
kmp.set({ "i", "n" }, "<up>", '<cmd>echo "Use k to move!!"<CR>')
kmp.set({ "i", "n" }, "<down>", '<cmd>echo "Use j to move!!"<CR>')

kmp.set("n", "<C-h>", ":wincmd h<CR>")
kmp.set("n", "<C-j>", ":wincmd j<CR>")
kmp.set("n", "<C-k>", ":wincmd k<CR>")
kmp.set("n", "<C-l>", ":wincmd l<CR>")

kmp.set("x", "<leader>p", '"_dP')

-- Dismiss Noice Message
kmp.set("n", "<leader>nd", "<cmd>NoiceDismiss<CR>", { desc = "[N]oice [D]ismiss" })
kmp.set("n", "<leader>nl", "<cmd>Telescope noice<CR>", { desc = "[N]oice [L]ist" })

-- Set cursor at the end of the yanked and pasted text
vim.cmd("vnoremap <silent> y y`]")
vim.cmd("vnoremap <silent> p p`]")
vim.cmd("nnoremap <silent> p p`]")
