local autocmd = vim.api.nvim_create_autocmd
-- local cgroup = vim.api.nvim_create_augroup("interp_c", { clear = true })
--
--
-- autocmd({ "BufNewFile", "BufRead" }, {
--   pattern = "*.c, *.h",
--   group = cgroup,
--   command = "set filetype c.doxygen",
-- })

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
	pattern = "*",
	command = "tabdo wincmd =",
})

autocmd("VimEnter", {
	pattern = "*",
	callback = function()
		vim.opt.tabstop = 4
		vim.opt.expandtab = true
		vim.opt.softtabstop = 4
		vim.opt.shiftwidth = 4
		vim.opt.nu = true
		vim.opt.relativenumber = true
		vim.opt.smartindent = true

		vim.opt.colorcolumn = "79"
		vim.opt.scrolloff = 8
		vim.opt.wrapmargin = 0
		vim.opt.wrap = true
		vim.opt.linebreak = true
		vim.o.backupcopy = "yes"
	end,
	once = true,
})

vim.api.nvim_create_user_command("FormatDisable", function(args)
	if args.bang then
		vim.b.disable_autoformat = true
	else
		vim.g.disable_autoformat = true
	end
end, {
	desc = "Disable autoformat on save",
	bang = true,
})

vim.api.nvim_create_user_command("FormatEnable", function(args)
	vim.b.disable_autoformat = false
	vim.g.disable_autoformat = false
end, {
	desc = "Re-enable autoformat on save",
})
