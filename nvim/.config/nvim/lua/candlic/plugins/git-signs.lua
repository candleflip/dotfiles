return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup()

		vim.keymap.set("n", "<leader>hp", ":Gitsigns preview_hunk<CR>", { desc = "[H]unk [P]review" })
		vim.keymap.set("n", "<leader>hr", ":Gitsigns reset_hunk<CR>", { desc = "[H]unk [R]eset" })
	end,
}
