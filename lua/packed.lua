require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'nvim-lua/plenary.nvim'

   use 'tomtom/tcomment_vim'

  use 'mileszs/ack.vim'
  use { 'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      local ts = require 'nvim-treesitter.configs'
      ts.setup {
        ensure_installed = 'maintained',
        highlight = { enable = true }
        }
    end
  }
  use 'sheerun/vim-polyglot'

  use 'itchyny/lightline.vim'
  use 'junegunn/fzf'
  use 'tpope/vim-fugitive'
  use 'kshenoy/vim-signature'
  use 'vimwiki/vimwiki'
  use 'masukomi/vim-markdown-folding'
  use 'gpanders/vim-medieval'

  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-compe'

  use 'hrsh7th/vim-vsnip'

  use 'josuegaleas/jay'
  use 'cormacrelf/vim-colors-github'


  -- TODO: look into
  --
  -- https://github.com/tpope/vim-dispatch
end)

vim.g.vsnip_snippet_dir = '$HOME/.config/nvim/vsnip'

vim.g.vimwiki_folding = 'custom'
vim.g.vimwiki_key_mappings =  {
  all_maps = 1
}
vim.g.vimwiki_list = {
    {
        path = '~/doc/',
        syntax = 'markdown',
        ext = '.md',
    }
}
