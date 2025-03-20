        sw      0       6       FWN
        lw      0       0       FWUTG 
DefTex  lw      0       0       FWUDG
local   sw      0       0       FWDTG  
        lw      0       0       FWDDG
        sw      0       0       FWL     
        halt        
FWN   .fill   10      
FWUTG   .fill   UndefT
FWUDG   .fill   UndefD
FWDTG   .fill   DefTex
FWDDG   .fill   FWN
FWL     .fill   local

