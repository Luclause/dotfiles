-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  -- Packs
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.python-ruff" },

  -- Color Schemes (Themes)
  -- { import = "astrocommunity.colorscheme.nordic-nvim" },
  -- { import = "astrocommunity.colorscheme.catppuccin" },

  -- Diagnostics
  { import = "astrocommunity.diagnostics.trouble-nvim" },

  -- WARN: Animations conflict with transparency (ew)
  -- { import = "astrocommunity.scrolling.mini-animate" },

  -- Recipes
  -- { import = "astrocommunity.recipes.telescope-nvchad-theme" },

  -- Media
  { import = "astrocommunity.media/codesnap-nvim" },
}
