# PyMOL.app

This repository is stand for providing a Mac OS X application container for [PyMOL][] which is installed by [homebrew][].

[PyMOL]: http://http://pymol.org/
[homebrew]: https://github.com/Homebrew/homebrew


## How to install it.

First of all, make sure your PyMOL is correctly installed in your system.
If you have not installed it yet, use [homebrew][] to install it.

```
$ brew tap homebrew/dupes
$ brew install homebrew/dupes/tcl-tk --enable-threads --with-x11
$ brew install python --with-brewed-tk
$ brew install pymol
```

Then download and copy `PyMOL` to your Application directory
