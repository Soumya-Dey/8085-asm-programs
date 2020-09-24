;<Program title>

jmp start
start: nop

xra A
sta f109h
lhld f100h
xchg
lhld f102h
dad D
xchg
lhld f104h
dad D
shld f106h
jc jump

next: lda f106h
mvi C, 48h
sub C
sta f120h
lda f107h
sbi 00H
sta f121h
lda f108h
sbi 00h
sta f122h
hlt

jump: mvi A, 01h
sta f108h
jmp next