-- this line for types, by hovering and autocompletion (lsp required)
-- will help you understanding properties, fields, and what highlightings the color used for
---@type Base46Table
local M = {}
-- UI
M.base_30 = {
	white = "#dfdfdf",
	black = "#1c1c1c", -- usually your theme bg
	darker_black = "#121212", -- 6% darker than black
	black2 = "#262626", -- 6% lighter than black
	one_bg = "#333333", -- 10% lighter than black
	one_bg2 = "#3a3a3a", -- 6% lighter than one_bg2
	one_bg3 = "#494949", -- 6% lighter than one_bg3
	grey = "#878787", -- 40% lighter than black (the % here depends so choose the perfect grey!)
	grey_fg = "#9e9e9e", -- 10% lighter than grey
	grey_fg2 = "#8f8f8f", -- 5% lighter than grey
	light_grey = "#c3c3c3",
	red = "#af5f5f",
	baby_pink = "#c7abab",
	pink = "#af8787",
	line = "#3a3a3a", -- 15% lighter than black
	green = "#87875f",
	vibrant_green = "#5f8767",
	nord_blue = "#5f7faf",
	blue = "#4c668c",
	seablue = "#394c69",
	yellow = "#dfdfaf", -- 8% lighter than yellow
	sun = "#ffdf87",
	purple = "#afafdf",
	dark_purple = "#8f87af",
	teal = "#005f5f",
	orange = "#af875f",
	cyan = "#87afaf",
	statusline_bg = "#262626",
	lightbg = "#333333",
	pmenu_bg = "#ffdf87",
	folder_bg = "#222222",
}

-- check https://github.com/chriskempson/base16/blob/master/styling.md for more info
M.base_16 = {
	base00 = "#121212",
	base01 = "#1c1c1c",
	base02 = "#3a3a3a",
	base03 = "#494949",
	base04 = "#878787",
	base05 = "#dfdfaf",
	base06 = "#aaaaaa",
	base07 = "#ffdf87",
	base08 = "#87afaf",
	base09 = "#c7abab",
	base0A = "#af875f",
	base0B = "#afdfb9",
	base0C = "#af5f5f",
	base0D = "#af5f5f",
	base0E = "#b28cb2",
	base0F = "#dfdfdf",
}

-- set the theme type whether is dark or light
M.type = "dark" -- "or light"

-- this will be later used for users to override your theme table from chadrc
M = require("base46").override_theme(M, "alduin")

return M
