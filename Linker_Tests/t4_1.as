dtext   sw      0       6       dtext
        sw      1       2       -32768
        sw      0       6       ddata
        noop
        halt
ddata   .fill   dtext
udata   .fill   ddata