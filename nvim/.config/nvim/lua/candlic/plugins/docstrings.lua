return {
	"danymat/neogen",
	opts = true,
	keys = {
		{
			"<leader>ad",
			function()
				require("neogen").generate()
			end,
			desc = "[A]dd [D]ocstring",
		},
	},
}
