-- Set leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set lines numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Set indents
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Set line wrap
vim.o.colorcolumn = "119"

-- Disable swap-files
vim.opt.swapfile = false
vim.opt.backup = false

-- Remove highlight after search
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Change <M-...> to <C-...> for auto-pairs plugin
vim.g.AutoPairsShortcutFastWrap = "<C-e>"
vim.g.AutoPairsShortcutBackInsert = "<C-b>"
vim.g.AutoPairsShortcutJump = "<C-n>"
vim.g.AutoPairsShortcutToggle = "<C-p>"

vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("highlight_yank", {}),
	desc = "Hightlight selection on yank",
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 150 })
	end,
})
