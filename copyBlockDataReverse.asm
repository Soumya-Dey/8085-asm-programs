lxi H, FF00H ;Counter
mov B, M
inx H
lxi D, FF24H

loop: mov A, M
stax D
inx H
dcx D
dcr B

jnz loop
mov A, B
stax D
hlt