About this Site
===============

The source for this site consists of a tree of plaintext files (written in 
vim) containing a somewhat-simplified markdown; each file represents a 
separate page.

**[sw](http://nibble.develsec.org/projects/sw.html)** is used to walk through
the source tree, building the header, footer, and menu bar. **sw** uses
**[smu](http://s01.de/~tox/index.cgi/proj_smu)** as its markdown handler,
though I added that instead of the default awk script that was provided.


Generating the html, pushing the built version, and cleaning the directory 
are all handled by a GNU Makefile, which will hopefully soon be converted
to a BSD makefile.

The source for the site is available on 
**[github](https://github.com/kisom/kyleisom.net)**.


