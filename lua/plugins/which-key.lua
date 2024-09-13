return {
  "folke/which-key.nvim",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },

  config = function()
    require("which-key").add({
      { "<leader>g", hidden = true },
    })
  end,
}
