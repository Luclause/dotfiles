-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "python",
      "terraform",
      "json",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
