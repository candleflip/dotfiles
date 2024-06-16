return {
	"linux-cultist/venv-selector.nvim",

	dependencies = {
		"neovim/nvim-lspconfig",
		"nvim-telescope/telescope.nvim",
		"mfussenegger/nvim-dap-python",
	},
	lazy = false,
	branch = "regexp",
	config = function()
		require("venv-selector").setup({
			name = { "venv", ".venv" },
			auto_refresh = true,
		})
	end,

	keys = {
		-- Keymap to open VenvSelector to pick a venv.
		{ "<leader>vs", "<cmd>VenvSelect<cr>", desc = "[V]env [S]elect" },
		-- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
		{ "<leader>vc", "<cmd>VenvSelectCached<cr>", desc = "[V]env Select [C]ached" },
	},
}
