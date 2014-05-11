Note: There is a [blog post](http://snhack.dev/blog/heathkit-hero-printable-parts/) relating to this project.


The Museum has allowed us to hack on an old Heathkit Hero, more specifically, the Hero 1, AKA ET-18. From the testing procedures, everything appears to work except moving the motors -- which is currently diagnosed as bad batteries.

I've taken photos of the schematics, though I have yet to post them online (they still have an active copyright holder -- Heathkit sold the copyright to the manuals). From that, I think that my original plan of driving the robot from the experiment board won't work -- the experiment board doesn't have direct access to the other perpherials, so we'd have to write driver code on the main CPU to implement a protocol over the experiment board, instead of driving things directly. However, a number of debug headers seem to exist on the CPU board, which may be powerful enough to essentially replace the CPU without modifying the hardware.

While writing the below, I found [this](http://ro.uow.edu.au/cgi/viewcontent.cgi?article=1008&context=compsciwp), which may describe the best route forward.

Headers:

P406, on CPU board -- buffered address box, low bits:

1. low when VMA high and address bits a15:a13 = 2 (a14 high) -- VMA=valid memory address -- 0x4000-0x5FFF
2. low when VMA high and address bits a15:a13 = 3 (a13, a14 high) -- 0x6000-0x7FFF
3. BA7
4. BA6
5. BA5
6. BA4
7. BA3
8. BA2
9. BA1
10. BA0

P408, on CPU board -- buffered address box, high bits:

1. low when VMA high and address bits a15:a13 = 4 (a15 high) - 0x8000-0x9FFF
2. low when VMA high and address bits a15:a13 = 5 (a15 and a13 high) - 0xA000-BFFF
3. BA15
4. BA14
5. BA13
6. BA12
7. BA11
8. BA10
9. BA9
10. BA8

P407, on CPU board -- unbuffered data bus (note: numbers not marked on schematic, so are guess):
1. R/W line, notted and buffered? -- after not, high=write, low=read
2. !RESET
3. D7
4. D6
5. D5
6. D4
7. D3
9. D2
10. D1