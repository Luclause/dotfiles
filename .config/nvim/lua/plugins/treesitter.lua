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
      "yaml",
      "html",
      "go",
      "gotmpl",
      -- add more arguments for adding more treesitter parsers
    },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
  },
}
