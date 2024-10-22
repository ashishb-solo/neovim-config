My neovim configuration for Golang development. Basic configuration with LSP support and a few other helpful plugins. Heavily inspired by https://www.josean.com/posts/how-to-setup-neovim-2024 - I would strongly recommend watching at least a portion of [his video](https://youtu.be/6pAG3BHurdM) if you can.

Additional helpful source(s):
* https://www.getman.io/posts/programming-go-in-neovim/

Browse [lua/ashish/plugins](lua/ashish/plugins) to see configured plugins and their related key-bindings.

# Troubleshooting

## libfzf.so not found

Telescope may complain that `libfzf.so` was not found.

**Solution:** `cd ~/.local/share/nvim/lazy/telescope-fzf-native.nvim/ && make`

## Treesitter errors when running :help

Treesitter may report lots of errors when reading vimdoc

**Solution:** `TSInstall vimdoc`. Or alternately, just include `vimdoc` in `treesitter.lua`
