;Program title -----
;Swap two 16 digit numbers. Numbers are given in two consecutive memory locations.

;Input -----   |    Output -----
;f100 => 79    |    f100 => 33
;f101 => 2B    |    f101 => A2
;f102 => 33    |    f102 => 79
;f103 => A2    |    f103 => 2B

;Source code -----
lhld f100h
xchg
lhld f102h
mov a, l
sta f100h
mov a, h
sta f101h
mov a, e
sta f102h
mov a, d
sta f103h
hlt
