return {
	"folke/which-key.nvim",
	config = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300

		require("which-key").setup({})

		require("which-key").register({
			["<leader>p"] = { name = "[P]roject" },
			["<leader>s"] = { name = "[S]earch" },
			["<leader>v"] = { name = "[V]env" },
			["<leader>n"] = { name = "[N]oice" },
			["<leader>h"] = { name = "[H]unk" },
			["<leader>a"] = { name = "[A]dd docstring" },
			["<leader>m"] = { name = "[M]arkdown" },

			["<leader>c"] = { "[C]hange all occurances" },
			["<leader>d"] = { "[D]iagnostics" },
			["<leader>r"] = { "[R]ename" },
			["<leader>t"] = { "[T]oggle" },
			["<leader>g"] = { "[G]oto" },
		})
	end,
}
