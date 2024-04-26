vim.g.mapleader = " "

vim.cmd('syntax enable')

vim.cmd "colorscheme habamax"
--vim.cmd('highlight Normal guibg=NONE ctermbg=NONE')
vim.cmd "set undodir=~/.config/nvim/undo"
vim.cmd "set nowrap"
vim.cmd "set signcolumn=yes"
--
vim.o.expandtab = true     
vim.o.breakindent = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.o.completeopt = 'menuone,noselect'


vim.wo.number = true
vim.o.termguicolors = true
vim.cmd "highlight Keyword guifg=NONE guibg=NONE gui=bold"
vim.cmd "highlight Type guifg=#dba848 guibg=NONE gui=bold"
vim.cmd "highlight Statement guifg=NONE  guibg=NONE gui=bold"
vim.cmd "highlight PreProc guifg=#ebf0af  guibg=NONE gui=bold"
vim.cmd "highlight Function guifg=#219abf guibg=NONE=NONE"

vim.o.mouse = "a"

vim.cmd('filetype plugin indent on')

vim.api.nvim_set_keymap('n', '<leader>n', ':set relativenumber!<CR>', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>wq', ':wq<CR>', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>e', ':Explore<CR>', { noremap = true })

vim.cmd('set undofile')
vim.api.nvim_set_keymap('n', '<shift>k', ':Man <cword><CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })





--plugins
--
--
--
-- Packer
require('plugin.packer')
require("mason").setup()
local lspconfig = require("lspconfig")
lspconfig.rust_analyzer.setup({
})

local cmp = require('cmp')
cmp.setup({
    mapping = {
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
        { name = 'nvim_lsp' }
    }
})

lspconfig.clangd.setup({
})

local cmp = require('cmp')
cmp.setup({
    mapping = {
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
        { name = 'nvim_lsp' }
    }
})


vim.opt.guicursor = ""
