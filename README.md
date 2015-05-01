vim-starter
===========
## Installation

```bash
echo "runtime vimrc" > ~/.vimrc && mkdir ~/.vim && cd ~/.vim && git clone https://github.com/travis2861/vim-starter.git . &&  cp .tmux.conf ~/ && git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim && vim +PluginInstall
```
## Shortcuts

`<Leader>` is defined as the `\` key by default. `C-x` means Control + x and `M-x` means Meta-x. (*alt* or *option* in modern keyboards) `S-x` means Shift-x.

* `<Leader>y`: Copy to system clipboard
* `<Leader>d`: Cut to system clipboard
* `<Leader>p`: Paste below, from system clipboard
* `<Leader>P`: Paste above, from system clipboard
* `<F5><F5>`: Toggle paste mode. (Not important if you're using the shortcuts above.)
* `<F5>`: Reload Vim settings
* `<Space>x`: Remove search highlight.
* `<Leader>]`: Open/Close NERDTree
* `<Tab>`: Buffer list (Normal Mode)
* `C-p`: Fuzzy finder
* `C-Space` : Buffer Switcher (I have no idea of the exact word) 
* `<Space>w`: Next sub-word in a camel cased word
* `<Space>b`: Previous sub-word in a camel cased word
* `<Space>e`: End of sub-word in a camel cased word
* `C-n`: Add the next occurrence of the selection to the multiple cursor selection
* `:retab` "retabs" your file acording to vimrc e.g. replaces all tabs with spaces
