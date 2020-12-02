;Program title ---------
;Find the 2nd largest number for n unsigned
;numbers [here n = 6] stored from f081h and
;counter at f080h. Store the result at f0A0h.

;Input -----------------|--- Output -----|
;f080 => 06 ;counter    |    f0A0 => 09  |
;f080 => 08 ;1st data   |                |
;f102 => 07             |                |
;f103 => 02             |                |
;f104 => 0A             |                |
;f105 => 08             |                |
;f10A => 09 ;last data  |                |
;-----------------------|----------------|

;Source code -----
lxi h, f080h
mov c, m
inr l
dcr c
mov d, m
mvi e, 00h

loop: inr l
mov a, m
cmp d
jc go
mov e, d
mov d, a
jmp again

go: cmp e
jc again
mov e, a

again: dcr c
jnz loop
mov a, e
sta f0a0h
hlt
