# EMACS WIK-MODE

Plain wiki-style notes in Emacs with zero syntax overhead.

## LEGACY DOCUMENTATION

See the [WIK-MODE-DOCUMENTATION.wik](WIK-MODE-DOCUMENTATION.wik) file

## NEW (WIP) DOCUMENTATION

Peek: a newly added literate programming feature. Write a manifest-style `.wik`
page composed of file links. Use peek to preview the contents of linked code
files, in the order you've specified in the manifest.

``` text
M-S-LEFT (wik-peek-discard)
    Revert the peeked contents back to only be a simple file path.

M-S-RIGHT (wik-peek)
    Inserts conflict markers around a file path and its peeked contents.
    This previews the contents inline without editing the original file.
    Use `wik-peek-discard` to remove the preview and restore just the path.
    Note: any changes made to the peeked content will be lost when discarded.
```

### PEEK PATH

The path itself should ideally go in it's own line (or at least have spaces
surrounding it). You must use path markers in front of the path to be identified
as a path (./, ../, /, ~/).

If your path has spaces then use control-space in emacs and navigate to select
a region that includes the space before peeking:

``` text
/path/to/my file.txt
       ^_____^ region selection includes all spaces in path
```

### PEEK EXAMPLE

original filepath text:

``` text
/path/to/wik-mode/file-path-begin-regexp.reg
```

peeked:

``` text
<<<<<<< PATH PEEKED
/path/to/wik-mode/file-path-begin-regexp.reg
=======
(?:^|[ \n])(?:\.{0,2}|~)?(?:/|\\)
>>>>>>> PEEK
```

discard the peek (back to original text):

``` text
/path/to/wik-mode/file-path-begin-regexp.reg
```

## BUILD INFO

generate the regular expression file using elreg:

```sh
python3 /path/to/elreg.py "wik-mode" *.reg > wik-mode-elreg.el
```
