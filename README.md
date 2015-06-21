# learning assembler
intention of these project is not learning assembler,
but i ever wanted to develop an intro for c64.

if you want to this, you  will figure out asap, that 
basic is not useful for that and starts with assembler.

the projects are based on the dust layer for mac, so it
comes with a configuration for AMCE, Vice, packacking
and more.

but the pucrunch part is broken:

so disable line 43 via

vi /usr/local/bin/assemble_6502
```
#/usr/local/bin/pucrunch "$BUILD_DIR/$OUTPUT" "$BUILD_DIR/$OUTPUT"
```

You also can see that i tried to follow this project structure.

# sources
http://dustlayer.com/c64-coding-tutorials/2013/2/10/dust-c64-command-line-tool

# example usage
```
cd c64/assembler/cats
± % /opt/boxen/nodenv/versions/v0.10/bin/dust compile index.asm
```
