#!/bin/bash
echo uncomment spiting file to use new file
# split -b 6912 top.gsc
# rm top1.scr top2.scr h1.p h2.p h1.a h2.a
# mv xaa top1.scr
# mv xab top2.scr
dd if=top1.scr of=header1.pix bs=2048 count=1
dd if=top1.scr of=header1.atr bs=1 skip=6144 count=256
dd if=top2.scr of=header2.pix bs=2048 count=1
dd if=top2.scr of=header2.atr bs=1 skip=6144 count=256
zx7b header1.pix h1.p
zx7b header2.pix h2.p
zx7b header1.atr h1.a
zx7b header2.atr h2.a


