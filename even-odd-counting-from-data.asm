;Program title -----
;Count even, odd numbers from an array of 10 data.

;Input -----   |    Output -----
;f100 => OA    |    f120 => 06
;f101 => 05    |    f121 => 04
;f102 => 82    
;f103 => AA     
;f104 => 9B 
;f105 => 72 
;f106 => 56 
;f107 => 69 
;f108 => BC 
;f109 => 44
;f10A => 3F  

;Source code -----
mvi d, 00h
mvi e, 00h
lxi h, f100h
mov c,m

loop: inx h
mov a,m
rrc
jc odd
inr d

go: dcr c
jnz loop
mov a,d
sta f120h
mov a,e
sta f121h
hlt

odd: inr e
jmp go
