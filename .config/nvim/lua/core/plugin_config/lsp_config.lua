require("mason").setup()
require("mason-lspconfig").setup()

-- lspsaga
require('lspsaga').setup({
  ui = {
    code_action = "💡",
    virtual_text = false,
  },
  symbol_in_winbar = {
    in_custom = false,
    enable = true,
    separator = ' ',
    show_file = true,
    file_formatter = ""
  },
})

vim.keymap.set("n", "gd", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<cr>', { silent = true })
vim.keymap.set({"n","v"}, "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true })
vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", { silent = true })

-- list of language servers
local servers = {
  ansiblels = {},
  bashls = {},
  clangd = {},
  cmake = {},
  cssls = {},
  dockerls = {},
  docker_compose_language_service = {},
  -- gopls = {}, needs go
  html = {},
  jsonls = {},
  tsserver = {},
  -- jqls = {}, needs go
  lua_ls = {
    Lua = {
      workspace = { checkThridParty = false },
      telemetry = { enable = false },
      -- NOTE: toggle below to ignore Lua_LS's noisy `missing-fields` warnings
      -- diagnostics = { disable = { 'missing-fields' } },
    },
  },
  -- autotools-language-server = {},
  marksman = {},
  intelephense = {},
  powershell_es = {},
  pyright = {},
  rust_analyzer = {},
  sqlls = {},
  svelte = {},
  taplo = {},
  tailwindcss = {},
  terraformls = {},
  lemminx = {},
  yamlls = {},
}

-- Setup neovim lua configuration
require("neodev").setup()

-- nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

-- ensure servers are installed
local mason_lspconfig = require("mason-lspconfig")

mason_lspconfig.setup {
  ensure_installed = vim.tbl_keys(servers),
}

mason_lspconfig.setup_handlers {
  function(server_name)
    require("lspconfig")[server_name].setup {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = servers[server_name],
      filetypes = (servers[server_name] or {}).filetypes,
    }
  end,
}

