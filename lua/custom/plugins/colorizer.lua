-- lua/kickstart/plugins/colorizer.lua
return {
	"NvChad/nvim-colorizer.lua",
	event = "VeryLazy",
	config = function()
		require("colorizer").setup({
			filetypes = {
				"html",
				"css",
				"scss",
				"blade",
				"php",
				"javascript",
				"typescript",
				"vue",
				"lua",
			},
			user_default_options = {
				names = true,
				rgb_fn = true,
				hsl_fn = true,
				css = true,
				tailwind = true,
			},
		})
	end,
}
