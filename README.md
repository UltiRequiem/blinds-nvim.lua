# blinds-nvim.lua

https://user-images.githubusercontent.com/71897736/120812185-5faa1f80-c512-11eb-91cb-5c2e2350066c.mp4

## Installation

Install like any other Plugin:

### [Packer](https://github.com/wbthomason/packer.nvim)

```
use 'UltiRequiem/blinds-nvim.lua'
```

### [Vim-Plug](https://github.com/junegunn/vim-plug)

```
Plug 'UltiRequiem/blinds-nvim.lua'
```

# Customization

Set variable `vim.g.blinds_guibg` to the desired color in `init.lua` or wherever you put your settings.

Example that will shade the other windows in grey:
```lua
vim.g.blinds_guibg = "#969694"
```

Based on https://github.com/jceb/blinds.nvim

I did this to know the structure of the vim plugins, so it was done quickly and without many options.

If you like this you should try: https://github.com/sunjon/Shade.nvim


## License

Copyright (c) UltiRequiem. Distributed under the MIT license.
