require('plenary.reload').reload_module('opts')
require('plenary.reload').reload_module('packed')
require('plenary.reload').reload_module('keymaps')
-- require('plenary.reload').reload_module('lsp')
require('plenary.reload').reload_module('complete')

require("opts")
require("packed")
require("keymaps")
require("lsp")
require("complete")

vim.api.nvim_exec(
  [[

  colorscheme jay

  command! W w
  command! Wq wq
  command! WQ wq
  command! Q q

  nnoremap <Leader><CR> :EvalBlock<CR>
  nnoremap <Leader>r :EvalBlock!<CR>

  let $FZF_DEFAULT_COMMAND = ''
  nnoremap <silent> <Leader><Leader> :FZF -m<CR>
  let g:fzf_layout = { 'down': '30%' }

  " Undos
  set undofile
  set undodir=~/.vim/undodir

  " Swap
  set noswapfile "DON'T CREATE SWAP FILES
  set nolazyredraw "Don't redraw while executing macros

  set ignorecase
  set smartcase

  autocmd User NeomakeFinished :echo "Neomake Finished"

  ]],
  true)

vim.g.medieval_langs = {
  'python=python3',
  'haskell=evalghc',
  'sh',
  'console=bash',
  'bash',
  'octave',
  'bc',
  'sage'
}
