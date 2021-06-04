local plugin = [[
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

augroup blinds
    au!
    au WinEnter,BufWinEnter * setlocal winhighlight=
    au WinLeave * if &bl == 1 | setlocal winhighlight=ColorColumn:Blinds,CursorColumn:Blinds,CursorLine:Blinds,EndOfBuffer:Blinds,LineNr:Blinds,NonText:Blinds,Normal:Blinds,FoldColumn:Blinds,SignColumn:Blinds,VertSplit:Blinds,Whitespace:Blinds | endif
    au ColorScheme * call s:SetBlinds()
augroup END

if (exists("g:loaded_blinds") && g:loaded_blinds) || &cp
    finish
endif
let g:loaded_blinds= 1

]]

local function setup()
  vim.api.nvim_exec(plugin)
end

return {setup = setup}
