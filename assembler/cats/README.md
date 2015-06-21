# cats
This is the first, maybe last, project in assembler.
I started with playing an SID in a loop, which is working.

But i wanted also show a picture. Now there is one
koala bitmap converted on my WIN PC, because of reasons :P.

But nothing really worked, but obviously the common picture routines
and common player routines are sharing the first memory bank and
so parts of the picture gets overwritten by the sound (or visa vi).

So the bitmap now is loaded into a separate bank.

There are a lot of things, happened during splitting the code, which
i do not understand yet, e.g. why i need to store the bitmap data
in the main script and returning after jsr is not working.

But its unbelievable interesting big story behind, maybe i will
continue.

# sources
http://www.hvsc.c64.org/#search
http://csdb.dk/search/?seinsel=all&search=project+one&Go.x=0&Go.y=0
http://www.atlantis-prophecy.org/convert.htm

# usage
```
cd c64/assembler/cats
± % /opt/boxen/nodenv/versions/v0.10/bin/dust compile index.asm
```
