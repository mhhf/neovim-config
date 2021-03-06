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
  -- use 'TovarishFin/vim-solidity'
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

  use 'neomake/neomake'

  -- use 'glepnir/indent-guides.nvim'
  -- use 'lukas-reineke/indent-blankline.nvim'

  -- TODO: look into
  --
  -- https://github.com/tpope/vim-dispatch
end)

vim.g.vsnip_snippet_dir = '$HOME/.config/nvim/vsnip'

-- vim.g.vimwiki_folding = 'custom'
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

-- require'nvim-treesitter.configs'.setup {
--   ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
--   ignore_install = { "javascript" }, -- List of parsers to ignore installing
--   highlight = {
--     enable = true,              -- false will disable the whole extension
--     disable = { "c", "rust" },  -- list of language that will be disabled
--   },
-- }

  -- *Must* be *S*olidity not solidity
  require "nvim-treesitter.parsers".get_parser_configs().Solidity = {
    install_info = {
      url = "https://github.com/JoranHonig/tree-sitter-solidity",
      files = {"src/parser.c"},
      requires_generate_from_grammar = true,
    },
    filetype = 'solidity'
  }
