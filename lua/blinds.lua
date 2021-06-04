local function setup()
  vim.api.nvim_command([[

if !exists("g:blinds_guibg")
let g:blinds_guibg = "#969694"
endif

function! s:SetBlinds()
exec "hi Blinds guibg=".g:blinds_guibg
endfun

augroup blinds
autocmd!
autocmd WinEnter,BufWinEnter * setlocal winhighlight=
autocmd WinLeave * if &bl == 1 | setlocal winhighlight=ColorColumn:Blinds,CursorColumn:Blinds,CursorLine:Blinds,EndOfBuffer:Blinds,LineNr:Blinds,NonText:Blinds,Normal:Blinds,FoldColumn:Blinds,SignColumn:Blinds,VertSplit:Blinds,Whitespace:Blinds | endif
autocmd ColorScheme * call s:SetBlinds()
augroup END

call s:SetBlinds()
]])
end

return {setup = setup}
