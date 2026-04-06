-- Change this line to set your project directory
local PROJECT_DIR = "~/Drives/Files/Projects"
return {
  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      -- Add "P" key to dashboard
      table.insert(opts.dashboard.preset.keys, 3, {
        icon = "",
        key = "P",
        desc = "Open Projects",
        action = function()
          Snacks.picker.projects({
            dev = { PROJECT_DIR },           -- Search in your projects directory
            patterns = { ".git" },            -- Only show folders with .git
            recent = false,                   -- Don't include recent projects from elsewhere
            max_depth = 2,                    -- Search up to 2 levels deep
          })
        end,
      })
    end,
    keys = {
      -- Override <leader>fP keybinding
      { 
        "<leader>fP", 
        function()
          Snacks.picker.projects({
            dev = { PROJECT_DIR },           -- Search in your projects directory
            patterns = { ".git" },            -- Only show folders with .git
            recent = false,                   -- Don't include recent projects from elsewhere
            max_depth = 2,                    -- Search up to 2 levels deep
          })
        end, 
        desc = "Open Projects" 
      },
    },
  },
}
