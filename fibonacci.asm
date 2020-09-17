mvi D, 00H
mvi E, 01H
lxi H, F050H
mov C, M ;Counter
inx H
mov M, D
dcr C
jc next
jz next
inx H
mov M, E
dcr C
jz next

then: inx H
mov A, D
add E
mov D, E
mov E, A
mov M, A
dcr C
jnz then

next: hlt