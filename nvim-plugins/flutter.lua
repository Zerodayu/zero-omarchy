return {
	"nvim-flutter/flutter-tools.nvim",
	lazy = true,
	ft = { "dart" },
	dependencies = {
		"nvim-lua/plenary.nvim",
		"stevearc/dressing.nvim",
		"nvim-telescope/telescope.nvim", -- Telescope integration for Flutter commands and FVM
		{
			"folke/which-key.nvim",
			optional = true,
			opts = {
				spec = {
					{ "<leader>F", group = "Flutter tools" },
				},
			},
		},
	},
	keys = {
		-- Telescope integration
		{ "<leader>Fc", "<cmd>Telescope flutter commands<cr>", desc = "Flutter Commands" },
		{ "<leader>Fv", "<cmd>Telescope flutter fvm<cr>", desc = "Flutter FVM" },
	},
	config = function(_, opts)
		-- Setup flutter-tools
		require("flutter-tools").setup(opts)

		-- Load Telescope extension for Flutter commands and FVM
		require("telescope").load_extension("flutter")
	end,
	opts = {
		fvm = true, -- ✅ Enable FVM support
		root_patterns = { ".git", "pubspec.yaml" },
		decorations = {
			statusline = {
				-- set to true to be able use the 'flutter_tools_decorations.app_version' in your statusline
				-- this will show the current version of the flutter app from the pubspec.yaml file
				app_version = true,
				-- set to true to be able use the 'flutter_tools_decorations.device' in your statusline
				-- this will show the currently running device if an application was started with a specific
				-- device
				device = true,
				-- set to true to be able use the 'flutter_tools_decorations.project_config' in your statusline
				-- this will show the currently selected project configuration
				project_config = true,
			},
		},
		debugger = {
			enabled = true, -- Enable debugging with nvim-dap
		},
		dev_tools = {
			autostart = false, -- autostart devtools server if not detected
			auto_open_browser = false, -- Automatically opens devtools in the browser
		},
		widget_guides = {
			enabled = true, -- Your preference
		},
		dev_log = {
			open_cmd = "15split", -- where to open dev log
		},
		closing_tags = {
			enabled = true, -- Your preference
			highlight = "Comment",
			prefix = "— ",
		},
		lsp = {
			color = {
				enabled = true, -- Your preference
				virtual_text = true,
				virtual_text_str = "■",
			},
			settings = {
				showTodos = true,
				completeFunctionCalls = true,
				enableSnippets = true,
				updateImportsOnRename = true,
			},
		},
	},
}
