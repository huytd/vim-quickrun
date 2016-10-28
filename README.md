# QuickRun Plugin for Vim

A plugin to quickly execute `JavaScript`, `Ruby`, `Golang`, `Python`,... files with just a single command.

## Supported Languages
- JavaScript
- Ruby
- Python
- Golang
- C/C++
- Haskell
- Swift

## Installation

You can install this plugin with any plugin manager, or install manually:

```
git clone https://github.com/huytd/vim-quickrun ~/.vim/bundle/
```

Or if you're using Neovim:

```
git clone https://github.com/huytd/vim-quickrun ~/.config/nvim/bundle/
```

## How to use

To execute the current file, run this command:

```
:QuickRunExecute
```

Or you can map it with your favorite key:

```
nnoremap <leader>e :QuickRunExecute<CR>
```

## License

Published under MIT license
