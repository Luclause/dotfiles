-- Customize Mason

---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        -- install language servers
        "lua-language-server",
        "marksman",
        "terraform-ls",

        -- install formatters
        "stylua",

        -- install debuggers
        "debugpy",

        -- install linters
        "golangci-lint",

        -- install any other package
        "tree-sitter-cli",
      },
    },
  },
}
