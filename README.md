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
