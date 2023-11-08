local lsp = require('lsp-zero').preset("recommended")
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = cmp_action.tab_complete(),
        ['<S-Tab>'] = cmp_action.select_prev_or_fallback(),
        ['<CR>'] = cmp.mapping.confirm({ select = false }),
    })
})

lsp.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp.default_keymaps({ buffer = bufnr })
    lsp.buffer_autoformat()
end)

-- When you don't have mason.nvim installed
-- You'll need to list the servers installed in your system
lsp.setup_servers({ 'tsserver', 'eslint' })

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.ensure_installed({
    'tsserver',
    'eslint',
    'rust_analyzer',
    'gopls'
})

lsp.setup()
