"------------------------------------------
" personal functions
"
function! RemoveTrailingWhitespace()
  " Remove all trailing whitespace
  :%s/\s\+$//ge
endfunction

function! ShowLineCount()
  let l:line_count = line("$")
  echo "This file has " . l:line_count . " lines."
endfunction

" MyFunction("a", "b")
function! MyFunction(arg1, arg2)
  echo a:arg1 . " " . a:arg2
  if a:arg1 == "a"
    echo "arg4 is a"
  elseif a:arg1 == "b"
    echo "arg2 is b"
  else
    echo "arg1 is not a"
  endif
endfunction

luafile ~/.config/nvim/my_functions.lua
