local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

autocmd("VimEnter", {
    pattern = "*",
    callback = function ()
        require("nvim-tree.api").tree.open()
        vim.cmd("wincmd l")
        require("nvterm.terminal").new "horizontal"
        vim.cmd("wincmd k")
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
        vim.opt.wrap = true
        vim.opt.linebreak = true

      end,
    once = true;

})

