vim.loader.enable()

-- set-up lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = require("plugins")

-- others
require("plugins")

require("lazy").setup(plugins, opts, {
    install = {
        -- install missing
        missing = true,
    }
})

require("autoclose").setup {
    options = {
        disabled_filetypes = { "text" },
     },
}

vim.api.nvim_win_set_option(0, 'number', true)
vim.opt.shiftwidth = 4

require('hardline').setup {
    theme = 'gruvbox',
}
require('monokai').setup {} 