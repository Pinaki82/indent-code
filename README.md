# indent-code
A Vim plugin to indent code. Indents code while saving a file.

Write the following lines to your .vimrc for convenience.

```
filetype plugin indent on
set autoindent
set smartindent
set copyindent                  " copy the previous indentation on autoindenting
set preserveindent              " save as much indent structure as possible
set tabstop=2                   " a tab is two spaces
set shiftwidth=2                " number of spaces to use for autoindenting
set softtabstop=2
```

Vim can indent lines of codes from the Normal mode with a key sequence.

In Normal mode:

Type

```
gg
```

Then type

```
=G
```

To indent code from the Command mode using this plugin, type:

```
:IndentCode
```

Or access it from the menu bar option.
