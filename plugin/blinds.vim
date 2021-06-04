if (exists("g:loaded_blinds") && g:loaded_blinds) || &cp
    finish
endif

let g:loaded_blinds= 1

if !exists("g:blinds_guibg")
let g:blinds_guibg = "#969694"
endif

function! s:SetBlinds()
  exec "hi Blinds guibg=".g:blinds_guibg
endfun


lua require'blinds'.setup()

call s:SetBlinds()
