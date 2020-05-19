// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

//
// fill screen
// for (i = 0; i < 8191; ++i) {
//     M[SCREEN + i] = -1 or 0
// }
//

(LOOP)
@KBD
D = M
@CLEAR
D; JEQ	// goto CLEAR if KBD == 0

// fill black
(FILL)
@i
M = 0

(FLOOP)
@i
D = M
@8192
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

@LOOP
0; JEQ

(CLEAR)
(FILLW)
@i
M = 0

(FLOOPW)
@i
D = M
@8192
D = D - A
@DONEW
D; JGE

@i
D = M
@SCREEN
A = A + D

M = 0

@i
M = M + 1

@FLOOPW
0; JEQ

(DONEW)

@LOOP
0; JEQ