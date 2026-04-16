return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = "VeryLazy",
	opts = {
		ensure_installed = {
			"bash",
			"c",
			"diff",
			"html",
			"lua",
			"luadoc",
			"markdown",
			"markdown_inline",
			"query",
			"vim",
			"vimdoc",
			"php",
			"javascript",
			"css",
			"vue",
		},
		auto_install = false,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false, -- Required for vim-blade
		},
		indent = { enable = true },
	},
}
