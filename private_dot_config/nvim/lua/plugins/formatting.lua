return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        yaml = { "prettier" }, -- or "yamlfmt"
        json = { "prettier" },
        markdown = { "prettier" },
        html = { "prettier" },
      },
    },
  },
}
