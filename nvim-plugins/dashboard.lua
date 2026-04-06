-- Change this line to set your project directory
local PROJECT_DIR = "~/Drives/Files/Projects"

return {
  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      -- Add "p" key to dashboard
      table.insert(opts.dashboard.preset.keys, 3, {
        icon = " ",
        key = "p",
        desc = "Open Projects",
        action = function()
          vim.cmd("cd " .. PROJECT_DIR)
          Snacks.picker.files()
        end,
      })
    end,
    keys = {
      -- Override <leader>fp keybinding
      { 
        "<leader>fp", 
        function()
          vim.cmd("cd " .. PROJECT_DIR)
          Snacks.picker.files()
        end, 
        desc = "Open Projects" 
      },
    },
  },
}
