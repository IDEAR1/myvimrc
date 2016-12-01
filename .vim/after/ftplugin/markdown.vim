let b:delimitMate_quotes = "\" ' `"
let b:delimitMate_nesting_quotes = ['`']

inoremap <expr> <CR> Expander()

function! Expander()
  let line   = getline(".")
  let col    = col(".") - 1

  if line[0:2] ==# "```" && line[col : col+2] ==# "```"
    return "\<CR>\<Esc>O"
  endif

  return "\<CR>"
endfunction
