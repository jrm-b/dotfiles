return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "L3MON4D3/LuaSnip",
    "rafamadriz/friendly-snippets",
    { "Saghen/blink.cmp", version = "1.*" },
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup()
    
    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          runtime = {
            version = "LuaJIT",
          },
          diagnostic = {
            globals = {
                "vim",
                "require",
            },
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
          },
          telemetry = {
            enable = false,
          },
        },
      },
    })
    require("luasnip.loaders.from_vscode").lazy_load()
    require("blink.cmp").setup({
      signature = {
        enabled = true,
      },
      completion = {
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 500,
        },
        menu = {
          auto_show = true,
          draw = {
            treesitter = { "lsp" },
            columns = { { "kind_icon", "label", "label_description", gap = 1 }, { "kind" } },
          },
        },
      },
    })
  end
}
