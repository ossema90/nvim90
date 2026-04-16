return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = {
		flavour = "mocha", -- Choose: "latte", "frappe", "macchiato", or "mocha"
		transparent_background = false, -- Set to true for transparent windows
		dim_inactive = {
			enabled = false,
			shade = "dark",
			percentage = 0.15,
		},
		integrations = {
			cmp = true,
			gitsigns = true,
			telescope = true,
			notify = false,
			mini = false,
		},
	},
}
