" autoload/merlin.vim

function! merlin#ToggleBracesAroundBlock()
  let l:start = line("'<")
  let l:end = line("'>")
  let l:before = getline(l:start - 1)
  let l:after = getline(l:end + 1)

  if l:before == '{' && l:after == '}'
    execute (l:start - 1) . "delete"
    execute (l:end) . "delete"
  else
    execute l:start . "normal! O{"
    execute (l:end + 1) . "normal! o}"
  endif
endfunction

