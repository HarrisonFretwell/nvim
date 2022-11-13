local lspkind = require('lspkind')
-- local lsp = require('lsp-zero')
local status, nvim_lsp = pcall(require, "lspconfig")
if (not status) then return end

local protocol = require('vim.lsp.protocol')

-- local on_attach = function(client, bufnr)
--   -- format on save
--   if client.server_capabilities.documentFormattingProvider then
--     vim.api.nvim_create_autocmd("BufWritePre", {
--       group = vim.api.nvim_create_augroup("Format", { clear = true }),
--       buffer = bufnr,
--       callback = function() vim.lsp.buf.formatting_seq_sync() end
--     })
--   end
-- end

-- TypeScript
nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" }
}

nvim_lsp.lua.setup {
  on_attach = on_attach,
  cmd = { "lua-language-server" }
}

-- Rust
-- nvim_lsp.rust_analyzer.setup{}
local rt = require("rust-tools")

-- Can get list of rust specific actions with prefix `:Rust`
rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>cr", "<Cmd>RustRunnables<CR>", { buffer = bufnr, desc="Runnables" })
    end,
  },
})



local status, cmp = pcall(require, "cmp")
if (not status) then return end
local lspkind = require 'lspkind'

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-e>'] = cmp.mapping.close(),
	['<Tab>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.

  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'buffer' },
  }),
  formatting = {
    format = lspkind.cmp_format({ with_text = false, maxwidth = 50 })
  }
})

vim.cmd [[
  set completeopt=menuone,noinsert,noselect
  highlight! default link CmpItemKind CmpItemMenuDefault
]]

--Lspsaga
-- local status, saga = pcall(require, "lspsaga")
-- if (not status) then return end

-- saga.init_lsp_saga {
--   server_filetype_map = {
--     typescript = 'typescript',
-- 	rust = "rust-analyzer"
--   }
-- }
-- lsp.preset('recommended')
-- lsp.setup_nvim_cmp({
--   formatting = {
--     format = lspkind.cmp_format(),
--   },
-- })
-- lsp.setup()

-- vim.keymap.set('n', '<leader>cr', vim.lsp.buf.rename, {desc="Rename"})
-- vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {desc="Code action"})
-- vim.keymap.set('n', '<leader>cd', vim.diagnostic.open_float, {desc="Show diagnostics"})
-- vim.keymap.set('n', '<leader>cj', vim.diagnostic.goto_prev, {desc="Next diagnostic"})
-- vim.keymap.set('n', '<leader>ck', vim.diagnostic.goto_next, {desc="Prev diagnostic"})
-- vim.keymap.set('n', 'K', vim.lsp.buf.hover, {desc="Lsp Hover"})



local opts = { noremap = true, silent = true }
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', opts)
vim.keymap.set('i', '<C-Space>', '<Cmd>Lspsaga signature<CR>', opts)
vim.keymap.set('n', '<leader>cr', '<Cmd>Lspsaga rename<CR>', {desc="Rename"})
vim.keymap.set('n', '<leader>ca', '<Cmd>Lspsaga code_action<CR>', {desc="Code action"})
vim.keymap.set('n', '<leader>cd', '<Cmd>Lspsaga show_line_diagnostics<CR>', {desc="Show line diagnostics"})
vim.keymap.set('n', '<leader>cd', '<Cmd>Lspsaga show_cursor_diagnostics<CR>', {desc="Show diagnostics at cursor"})
vim.keymap.set('n', '<leader>cj', '<Cmd>Lspsaga diagnostic_jump_next<CR>', {desc="Next diagnostic"})
vim.keymap.set('n', '<leader>ck', '<Cmd>Lspsaga diagnostic_jump_prev<CR>', {desc="Prev diagnostic"})


-- Trouble
vim.keymap.set('n', '<leader>xx', '<Cmd>TroubleToggle<CR>', {desc="Trouble Toggle"})
