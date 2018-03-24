"------------------------------------------
" personal functions
"
function! Loadctags()
  let dirgit7k = '/home/kakehi/work/git/autoeos/src/autoeos7000-src'
  let dirgit9k = '/home/kakehi/work/git/autoeos/src/autoeos9000-src'
  let dirgitmb = '/home/kakehi/work/git/autoeos/src/autoeosMB-src'
  let cwd = getcwd()
  if cwd =~ dirgitmb
    set tags+=/home/kakehi/work/tags/autoeosMB_local.ctags
  elseif cwd =~ dirgit7k
    set tags+=/home/kakehi/work/tags/autoeos7000.ctags
  elseif cwd =~ dirgit9k
    set tags+=/home/kakehi/work/tags/autoeos9000.ctags
  endif
endfunction

function! RemoveTrailingWhitespace()
  " Remove all trailing whitespace
  :%s/\s\+$//ge
endfunction
