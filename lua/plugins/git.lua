return {
  {
    "tpope/vim-fugitive",
    event = "VeryLazy",
    config = function()
      vim.schedule(function()
        vim.keymap.set("n", "<leader>go", "<cmd>top Git<cr>", { noremap = true, silent = true })
        vim.keymap.set("n", "<leader>gb", "<cmd>Git blame<cr>", { desc = "Git blame" })
      end)
    end,
  },
}
