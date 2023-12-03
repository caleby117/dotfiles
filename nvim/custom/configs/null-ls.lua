local null_ls = require("null-ls")

local b = null_ls.builtins

local sources = {

	-- webdev stuff
	b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
	b.formatting.prettier.with({ filetypes = { "html", "markdown", "css" } }), -- so prettier works only on these filetypes

	-- Lua
	b.formatting.stylua,

	-- cpp
	b.formatting.clang_format,

	-- Python
	-- b.diagnostics.ruff,
	b.formatting.black,
}

null_ls.setup({
	sources = sources,
	update_in_insert = true,
	root_dir = require("null-ls.utils").root_pattern(".null-ls-root", "Makefile", ".git", ".ccls"),
})
