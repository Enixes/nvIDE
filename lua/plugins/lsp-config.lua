return {
  {
  "williamboman/mason.nvim",
  config = function()
    require("mason").setup()
  end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "tsserver", "pyright", "jdtls", "gopls", "lemminx"}
    })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.jdtls.setup({})
      lspconfig.gopls.setup({})
      lspconfig.lemminx.setup({})

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {desc = "Boom"})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {desc = "Go to definition"})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {desc = "Code Action"})
    end
  }
}

