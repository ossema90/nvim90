-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {

	-- Inline Suggestions
	{
		"zbirenbaum/copilot.lua",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				suggestion = {
					enabled = true,
					auto_trigger = true,
					debounce = 75,
				},
				panel = { enabled = false },
				filetypes = {
					["*"] = true,
				},
			})

			local suggestion = require("copilot.suggestion")

			vim.keymap.set("i", "<C-j>", function()
				if suggestion.is_visible() then
					suggestion.accept()
				end
			end, { silent = true })

			vim.keymap.set("i", "<C-l>", function()
				suggestion.next()
			end, { silent = true })

			vim.keymap.set("i", "<C-h>", function()
				suggestion.prev()
			end, { silent = true })

			vim.keymap.set("i", "<C-x>", function()
				suggestion.dismiss()
			end, { silent = true })
		end,
	},

	-- Chat
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "main",
		dependencies = {
			{ "zbirenbaum/copilot.lua" },
			{ "nvim-lua/plenary.nvim" },
		},
		event = "VeryLazy",
		config = function()
			require("CopilotChat").setup({
				temperature = 0.1,
				window = {
					layout = "vertical",
				},
			})

			vim.keymap.set("n", "<leader>cc", function()
				require("CopilotChat").toggle()
			end)
			vim.keymap.set("n", "<leader>cm", function()
				require("CopilotChat").select_model()
			end, { desc = "Select Copilot Model" })
		end,
	},
}
