
PBI Helper Utilities by Steve Richardson
-----------------------------------------

![screenshot](https://github.com/tangentaudio/atari_pbi/blob/master/Atari/pbi_helper/pbi_helper.png)

- dumps out the contents of HATABS and highlights PBI devices
- shows the contents of some PBI shadow registers
- allows simple keyboard manipulation of D1FF and D100 registers for testing


Written in C using the cc65 cross compiler

Building & using
----------------
1. cc65 tools must be installed and in your path for the makefile to work.
   see: http://cc65.github.io/cc65/
   tested on Ubuntu linux
   
2. run 'make' to produce pbi.xex (executable)

3. Using RespeQt to mount the output folder on the Atari and run pbi.xex
   (or copy executable to other medium (e.g. CF card in SIDE2))

