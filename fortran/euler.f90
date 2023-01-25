Function Euler(dt, ti, tf, yi, m, cd)
    REAL dt, ti, tf, yi, m, cd Real h, t, y, dydt
    t = ti y = yi h = dt Do
    If (t + dt > tf) Then h = tf − t
    End If
    dydt = dy(t, y, m, cd) y = y+dydt*h t=t+h
    If (t >= tf) Exit
    End Do
    Euler = y End Function    