// fill black
(FILL)
@i
M = 0

(FLOOP)
@i
D = M
@8191
D = D - A
@DONE
D; JGE

@i
D = M
@SCREEN
A = A + D

M = -1

@i
M = M + 1

@FLOOP
0; JEQ

(DONE)


@DL
0; JEQ