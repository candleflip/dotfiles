return {
	"nvim-telescope/telescope.nvim",

	tag = "0.1.6",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-tree/nvim-web-devicons",
			config = function()
				require("nvim-web-devicons").setup({})
			end,
		},
	},

	config = function()
		require("telescope").setup({
			defaults = {
				layout_strategy = "horizontal",
				sorting_strategy = "ascending",
				layout_config = {
					width = 0.9,
					horizontal = { preview_width = 0.65 },
					prompt_position = "top",
				},
			},
		})

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
		vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch Project [F]ile" })
		vim.keymap.set("n", "<leader>sw", builtin.live_grep, { desc = "[S]earch [W]ord" })
		vim.keymap.set("n", "<leader>sr", builtin.oldfiles, { desc = "[S]earch [R]ecent Files" })
		vim.keymap.set("n", "<leader>sn", function()
			builtin.find_files({ cwd = vim.fn.stdpath("config") })
		end, { desc = "[S]earch [N]eovim Files" })
		vim.keymap.set("n", "<leader>sg", builtin.git_files, { desc = "[S]earch [G]it Files" })
	end,
}
