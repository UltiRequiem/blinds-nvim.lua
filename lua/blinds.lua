vim.cmd(
[[
if !exists("g:blinds_guibg")
    let g:blinds_guibg = "#969694"
endif
]]
)

vim.cmd(
[[
function! s:SetBlinds()
    exec "hi Blinds guibg=".g:blinds_guibg
endfun
]]
)

vim.cmd(
[[
augroup blinds
    au!
    au WinEnter,BufWinEnter * setlocal winhighlight=
    au WinLeave * if &bl == 1 | setlocal winhighlight=ColorColumn:Blinds,CursorColumn:Blinds,CursorLine:Blinds,EndOfBuffer:Blinds,LineNr:Blinds,NonText:Blinds,Normal:Blinds,FoldColumn:Blinds,SignColumn:Blinds,VertSplit:Blinds,Whitespace:Blinds | endif
    au ColorScheme * call s:SetBlinds()
augroup END
]]
)
