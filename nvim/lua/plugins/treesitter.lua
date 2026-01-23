return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require("nvim-treesitter.config").setup({
      ensure_installed = {
        "lua",
        "go",
        "gomod",
        "javascript",
        "typescript",
        "json",
        "html",
        "css",
      },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
