lxi H, FF00H ;Counter
mov B, M
inx H
lxi D, FF20H

loop: mov A, M
stax D
inx H
inx D
dcr B

jnz loop
mov A, B
stax D
hlt