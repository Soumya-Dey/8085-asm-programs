;Program title ---------
;An array of n hexadecimal data is given.
;Transfer all even data in a separate location
;and all odd data in another separate location
;in forward order (same as the original).
;Store 00 at the end of both of locations.

;|- Input -----------------|- Output -----|--------------|
;|  f100 => 0A ;counter    |- Even Data --|- Odd Data ---|
;|  f101 => 01 ;1st data   |  f120 => 02  |  f130 => 01  |
;|  f102 => 02             |  f121 => 04  |  f131 => 03  |
;|  f103 => 03             |  f122 => 06  |  f132 => 05  |
;|  f104 => 04             |  f123 => 08  |  f133 => 07  |
;|  f105 => 05             |  f124 => 0A  |  f134 => 09  |
;|  f106 => 06             |  f125 => 00  |  f135 => 00  |
;|  f107 => 07             |                             |
;|  f108 => 08             |                             |
;|  f109 => 09             |                             |
;|  f10A => 0A ;last data  |                             |
;|-------------------------|-----------------------------|

;Source code -----
lxi h, f100h
lxi d, f120h
lxi b, f130h
mov a, m
sta f400h

nozero: inx h
mov a, m
rrc
mov a, m
jnc even
stax b
inx b

jump: lda f400h
dcr a
sta f400h
jnz nozero
xra a
stax d
stax b
hlt

even: stax d
inx d
jmp jump
