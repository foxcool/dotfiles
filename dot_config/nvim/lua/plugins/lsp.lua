return {
  {
    "neovim/nvim-lspconfig",
    opts = {
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

