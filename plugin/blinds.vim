if (exists("g:loaded_blinds") && g:loaded_blinds) || &cp
    finish
endif

let g:loaded_blinds= 1

lua require'blinds'.setup()

call s:SetBlinds()
