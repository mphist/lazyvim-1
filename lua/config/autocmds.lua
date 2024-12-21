-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.cmd("set title")

-- Fix dark spots in lualine by automatically matching the highlight color to the theme in use
local function get_lualine_colors()
  local lualine = require("lualine")
  local theme = lualine.get_config().options.theme

  -- If the theme is a string, require it; otherwise, it's already a table
  if type(theme) == "string" then
    theme = require("lualine.themes." .. theme)
  end

  local normal = theme.normal.c
  return { fg = normal.fg, bg = normal.bg }
end

local function set_statusline_highlight()
  local colors = get_lualine_colors()

  vim.api.nvim_set_hl(0, "StatusLine", { bg = colors.bg, fg = colors.fg })
end

-- Call the function to set the highlight

set_statusline_highlight()
