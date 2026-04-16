-- Force Treesitter attachment
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "*", "*.*" },
	callback = function()
		vim.treesitter.start()
	end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufWinEnter" }, {
	callback = function()
		require("colorizer").attach_to_buffer(0)
	end,
})
