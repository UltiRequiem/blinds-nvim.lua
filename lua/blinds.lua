vim.g.blinds_guibg = "#969694"

local function setup()
  vim.api.nvim_command("hi Blinds guibg=" .. vim.g.blinds_guibg)
end

return {setup = setup}
