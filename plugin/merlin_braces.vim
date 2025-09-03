" plugin/merlin_braces.vim

augroup merlin_braces_bindings
  autocmd!
  autocmd FileType javascript,typescript,json,tsx,jsx,vim,c,delphi xnoremap <silent> <S-{> :<C-u>call merlin#ToggleBracesAroundBlock()<CR>
augroup END
" Вставка символов в визуальном режиме
xnoremap <leader>i :<C-u>call InsertAtBlockStart()<CR>
