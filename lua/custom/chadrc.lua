-- IMPORTANT NOTE : This is the user config, can be edited. Will be preserved if updated with internal updater
-- This file is for NvChad options & tools, custom settings are split between here and 'lua/custom/init.lua'

local M = {}
M.options, M.ui, M.mappings, M.plugins = {}, {}, {}, {}

-- NOTE: To use this, make a copy with `cp example_chadrc.lua chadrc.lua`

--------------------------------------------------------------------

-- To use this file, copy the structure of `core/default_config.lua`,
-- examples of setting relative number & changing theme:

 M.options = {
    relativenumber = true,
    tabstop = 2
 }
-- M.ui = {
--   theme = "nord"
-- }

-- NvChad included plugin options & overrides
M.plugins = {
   options = {
      relativenumber = true,
      tabstop = 2,
      --   lspconfig = {
      --    path of file containing setups of different lsps (ex : "custom.plugins.lspconfig"), read the docs for more info
      --    setup_lspconf = "",
      --   },
   },

   -- To change the Packer `config` of a plugin that comes with NvChad,
   -- add a table entry below matching the plugin github name
   --              '-' -> '_', remove any '.lua', '.nvim' extensions
   -- this string will be called in a `require`
   --              use "(custom.configs).my_func()" to call a function
   --              use "custom.blankline" to call a file
   default_plugin_config_replace = {},
}

M.mappings = {
   close_buffer = "<leader>q",
   new_buffer = "<leader>nb", -- open a new buffer
   new_tab = "<leader>nt", -- open a new vim tab
   save_file = "<leader>w", -- save file using :w
   terminal = {
      esc_termmode = { "JK" }, -- multiple mappings allowed
      pick_term = "<leader>fT",
      -- below three are for spawning terminals
      new_horizontal = "<leader>nth",
      new_vertical = "<leader>ntv",
      new_window = "<leader>nt",
   },
}
M.mappings.plugins = {
   nvimtree = {
      toggle = "<leader>tt",
      focus = "<leader>e",
   },
}
return M
