return {
	"stevanmilic/nvim-lspimport",

	config = function()
		vim.keymap.set("n", "<leader>i", require("lspimport").import, {
			noremap = true,
			desc = "[I]mport resolve",
		})
	end,
}
