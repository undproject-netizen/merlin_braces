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

function! InsertAtBlockStart()
  " Запрашиваем у пользователя текст для вставки
  let l:text = input('Введите текст для вставки: ')

  let start_line = line("'<")
  let end_line = line("'>")
  let start_col = col("'<")

  for lnum in range(start_line, end_line)
    let line = getline(lnum)
    let new_line = strpart(line, 0, start_col - 1) . l:text . strpart(line, start_col - 1)
    call setline(lnum, new_line)
  endfor
endfunction

