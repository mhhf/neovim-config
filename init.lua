require('plenary.reload').reload_module('opts')
require('plenary.reload').reload_module('packed')
require('plenary.reload').reload_module('keymaps')
require('plenary.reload').reload_module('lsp')
require('plenary.reload').reload_module('complete')

require("opts")
require("packed")
require("keymaps")
require("lsp")
require("complete")


vim.api.nvim_exec(
  [[

  command! W w
  command! Wq wq
  command! WQ wq
  command! Q q

  let g:medieval_langs = ['python=python3', 'sh', 'console=bash', 'bash', 'octave', 'bc', 'sage']
  nnoremap <Space><CR> :EvalBlock<CR>
  nnoremap <Space>r :EvalBlock!<CR>

  let $FZF_DEFAULT_COMMAND = ''
  nnoremap <silent> <Leader><Leader> :FZF -m<CR>
  let g:fzf_layout = { 'down': '30%' }

  set noswapfile "DON'T CREATE SWAP FILES
  set nolazyredraw "Don't redraw while executing macros

  ]],
  true)

