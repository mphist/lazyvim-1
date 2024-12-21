return {
  "nvim-telescope/telescope.nvim",
  config = function()
    vim.schedule(function()
      vim.keymap.set("n", "<leader>gd", "<cmd>Telescope lsp_definitions<cr>")
      vim.keymap.set("n", "<leader>fr", "<cmd>Telescope resume<cr>")
    end)
  end,
}
