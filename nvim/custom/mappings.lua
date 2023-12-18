---@type MappingsTable
local M = {}

M.general = {
	n = {
		[";"] = { ":", "enter command mode", opts = { nowait = true } },
		["J"] = { "mzJ`z", "Joins lines and keeps cursor where it originally was" },
		["<C-d>"] = { "<C-d>zz", "jump half page down" },
		["<C-u>"] = { "<C-u>zz", "jump half page up" },
		["n"] = { "nzzzv", "find string while keeping cursor in middle" },
		["N"] = { "Nzzzv", "find string while keeping cursor in middle" },
		["<leader>d"] = { '"_d', "preserve the yanked content" },
		["Q"] = { "<nop>", "do not press Q" },
		["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
		["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
		["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
		["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
	},
	v = {
		[">"] = { ">gv", "indent" },
		["J"] = { ":m '>+1<CR>gv=gv", "move chunk up" },
		["K"] = { ":m '<-2<CR>gv=gv", "move chunk down" },
		["<leader>d"] = { '"_d', "preserve the yanked content" },
	},

	x = {
		["<leader>p"] = { '"_dP', "preserve the yanked content" },
	},
}

-- more keybinds!

return M
