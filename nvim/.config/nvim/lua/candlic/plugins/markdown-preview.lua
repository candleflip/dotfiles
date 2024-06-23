return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown" },
	build = function()
		vim.fn["mkdp#util#install"]()
	end,

	vim.keymap.set("n", "<leader>mp", "<cmd>MarkdownPreview<CR>", { desc = "[M]arkdown [P]review" }),
	vim.keymap.set("n", "<leader>ms", "<cmd>MarkdownPreviewStop<CR>", { desc = "[M]arkdown preview [S]top" }),
}
