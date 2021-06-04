vim.g.blinds_guibg = "#969694"

local function setup()
  vim.api.nvim_command("hi Blinds guibg=" .. vim.g.blinds_guibg)
  vim.api.nvim_command([[
  augroup blinds
    au!
    au WinEnter,BufWinEnter * setlocal winhighlight=
    au WinLeave * if &bl == 1 | setlocal winhighlight=ColorColumn:Blinds,CursorColumn:Blinds,CursorLine:Blinds,EndOfBuffer:Blinds,LineNr:Blinds,NonText:Blinds,Normal:Blinds,FoldColumn:Blinds,SignColumn:Blinds,VertSplit:Blinds,Whitespace:Blinds | endif
    au ColorScheme * call s:SetBlinds()
  augroup END
  ]]

  )
end

return {setup = setup}
