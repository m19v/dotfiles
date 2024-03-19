return {
  {
    "stevearc/conform.nvim",
    config = function()
      require "configs.conform"
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = { enable = true },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults 
        "vim",
        "lua",
        "vimdoc",

        -- web dev 
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "go",
        "java",
        "python",

        -- linux
        "bash",

        -- low level
        "c",
        "zig",

        -- files
        "dockerfile",

        -- configs
        "json",
        "yaml",
        "tmux",
      },
    },
  },
}
