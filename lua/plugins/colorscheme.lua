return {
  "mphist/gruber-darker.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("gruber-darker").setup({
      bold = false,
      invert = {
        signs = false,
        tabline = false,
        visual = false,
      },
      italic = {
        strings = false,
        comments = true,
        operators = false,
        folds = true,
      },
      undercurl = true,
      underline = true,
    })

    vim.cmd([[colorscheme gruber-darker]])
  end,
}

-- return {
--   {
--     "rebelot/kanagawa.nvim",
--     lazy = false, -- make sure we load this during startup if it is your main colorscheme
--     priority = 1000, -- make sure to load this before all the other start plugins
--     config = function()
--       -- load the colorscheme here
--       require("kanagawa").setup({
--         compile = false, -- enable compiling the colorscheme
--         undercurl = true, -- enable undercurls
--         commentStyle = { italic = true },
--         functionStyle = {},
--         keywordStyle = { italic = true },
--         statementStyle = { bold = true },
--         typeStyle = {},
--         transparent = false, -- do not set background color
--         dimInactive = false, -- dim inactive window `:h hl-NormalNC`
--         terminalColors = true, -- define vim.g.terminal_color_{0,17}
--         colors = { -- add/modify theme and palette colors
--           palette = {},
--           theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
--         },
--         overrides = function(colors) -- add/modify highlights
--           return {}
--         end,
--         theme = "dragon", -- Load "wave" theme when 'background' option is not set
--         background = { -- map the value of 'background' option to a theme
--           dark = "dragon", -- try "dragon" !
--           light = "lotus",
--         },
--       })
--
--       vim.cmd([[colorscheme kanagawa]])
--     end,
--   },
--
--   -- {
--   --   "LazyVim/LazyVim",
--   --   opts = {
--   --     colorscheme = "kanagawa",
--   --   },
--   -- },
-- }
