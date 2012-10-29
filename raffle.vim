function! Raffle()
  let filesize=line('$')
  let winner = (Rand() % filesize) + 1
  execute 'global! /\%'.winner.'l/ delete'
endfunction

function! Rand()
  " http://stackoverflow.com/a/12739441/128850
  return str2nr(matchstr(reltimestr(reltime()), '\v\.@<=\d+')[1:])
endfunction

nnoremap <Space> :call Raffle()<CR>
