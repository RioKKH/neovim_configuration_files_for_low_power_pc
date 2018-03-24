"------------------------------------------
" personal functions
"
function! RemoveTrailingWhitespace()
  " Remove all trailing whitespace
  :%s/\s\+$//ge
endfunction
