-- Hyprland Configuration in Lua
-- Translated from hyprland.conf

local config = {}

-- General settings
hl.config({
	col = {
		active_border = "rgb(B91C1C)",
	},
	decoration = {

		active_opacity = 0.90,
		inactive_opacity = 0.80,
		rounding = 8,
		blur = {
			enabled = true,
			size = 4,
			passes = 3,
			ignore_opacity = true,
			noise = 0.1,
			contrast = 1.5,
			xray = false,
			new_optimizations = true,
		},
	},
})
-- config.general = {
-- 	col = {
-- 		active_border = "rgb(B91C1C)",
-- 	},
-- 	-- gaps_in = 4,
-- 	-- gaps_out = 6,
-- }

-- Decoration settings
-- config.decoration = {
-- 	active_opacity = 0.90,
-- 	inactive_opacity = 0.80,
-- 	rounding = 8,
-- 	blur = {
-- 		enabled = true,
-- 		size = 4,
-- 		passes = 3,
-- 		ignore_opacity = true,
-- 		noise = 0.1,
-- 		contrast = 1.5,
-- 		xray = false,
-- 		new_optimizations = true,
-- 	},
-- }

-- Animation settings
config.animations = {
	enabled = true,
	bezier = {
		easing = { 0.25, 1, 0.5, 1 },
	},
	animation = {
		{ name = "workspaces", speed = 1, curve = 6, style = "easing", type = "slide" },
		{ name = "windows", speed = 1, curve = 6, style = "easing", type = "popin" },
	},
}

-- Layer rules
config.layerrules = {
	{ match = "namespace:waybar", rules = { "blur on", "ignore_alpha 0.5" } },
	{ match = "namespace:walker", rules = { "blur on", "ignore_alpha 0.5" } },
	{ match = "namespace:mako", rules = { "blur on", "ignore_alpha 0.5" } },
}

-- Custom bindings
config.bindings = {
	{
		modifiers = { "SUPER", "SHIFT" },
		key = "C",
		description = "Calendar",
		command = "exec",
		action = "lvsk-calendar-launcher",
	},
}

return config
