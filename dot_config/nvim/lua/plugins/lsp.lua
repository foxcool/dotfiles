return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = false,
        virtual_lines = { current_line = true },
      },
      servers = {
        gopls = {
          settings = {
            gopls = {
              buildFlags = {"-tags=integration"},
              -- Или несколько тегов
              -- buildFlags = {"-tags=integration,e2e,slow"},
            },
          },
        },
      },
    },
  },
}

