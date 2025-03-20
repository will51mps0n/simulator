Dtext   add     0       1       2      
        nor     0       0       0
        sw      0       6       Dtext  
        lw      0       0       UseDT 
        lw      0       0       Ddata
        sw      0       0       UseDD  
        noop
        halt
UseDT   .fill   Dtext
Ddata   .fill   10
UseDD   .fill   Ddata