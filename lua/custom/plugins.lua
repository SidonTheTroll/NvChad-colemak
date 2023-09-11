--  ____  _             _           
-- |  _ \| |_   _  __ _(_)_ __  ___ 
-- | |_) | | | | |/ _` | | '_ \/ __|
-- |  __/| | |_| | (_| | | | | \__ \
-- |_|   |_|\__,_|\__, |_|_| |_|___/
--                |___/             

local plugins = {

  { "wakatime/vim-wakatime", lazy = false },
  { "mhinz/vim-startify", lazy = false },
  { "preservim/tagbar", lazy = false },
  { "andweeb/presence.nvim", lazy = false },


  {
    'folke/todo-comments.nvim',
    dependencies = {'nvim-lua/plenary.nvim'},
    opts ={
      signs = true,
      keywords = {
      TODO = {icon = '', color = '#ffea00', alt = {'todo', 'Todo'} },
      ADD = {icon = '', color = '#00fbff'},
      FIX = {icon = '', color = '#1eff00'},
      }
    }
  },




  {
  "neovim/nvim-lspconfig",
   config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
   end,
  },

  {
  "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "ltex-ls", "marksman", "prettier",
      },
    },
  }

}

vim.g.startify_custom_header = vim.fn.readfile('/home/sidon/.config/nvim/ascii.txt')

return plugins
