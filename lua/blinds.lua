local function setup()
  vim.api.nvim_command([[
augroup blinds
autocmd WinEnter,BufWinEnter * setlocal winhighlight=
autocmd WinLeave * if &bl == 1 | setlocal winhighlight=ColorColumn:Blinds,CursorColumn:Blinds,CursorLine:Blinds,EndOfBuffer:Blinds,LineNr:Blinds,NonText:Blinds,Normal:Blinds,FoldColumn:Blinds,SignColumn:Blinds,VertSplit:Blinds,Whitespace:Blinds | endif
autocmd ColorScheme * call s:SetBlinds()
augroup END

]])
end

return {setup = setup}
