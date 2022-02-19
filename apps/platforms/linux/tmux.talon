#os: linux
tag: user.tmux
-
mux: "tmux "

#session management
mux new session:
    insert('tmux new ')
mux attach:
    insert('tmux attach ')
mux sessions:
    key(ctrl-b)
    key(s)
mux name session:
    key(ctrl-b)
    key($)
mux save session:
    key(ctrl-b)
    key(ctrl-s)
mux restore session:
    key(ctrl-b)
    key(ctrl-r)
mux kill session:
    insert('tmux kill-session -t ')
#window management
mux new window:
    key(ctrl-b)
    key(c)
mux window <number>:
    key(ctrl-b )
    key('{number}')
mux previous window:
    key(ctrl-b)
    key(p)
mux next window:
    key(ctrl-b)
    key(n)
mux rename window:
    key(ctrl-b)
    key(,)
mux close window:
    key(ctrl-b)
    key(&)
#pane management
mux split horizontal:
    key(ctrl-b)
    key(%)
mux split vertical:
    key(ctrl-b)
    key(")
mux next pane:
    key(ctrl-b)
    key(o)
mux (go|move|focus) <user.arrow_key>:
    key(ctrl-b)
    key(arrow_key)
mux close pane:
    key(ctrl-b)
    key(x)
#Say a number right after this command, to switch to pane
mux pane numbers:
    key(ctrl-b)
    key(q)
mux swap pane:
    key(ctrl-b)
    key(ctrl-o)
mux zoom:
    key(ctrl-b)
    key(z)
mux detach:
    key(ctrl-b)
    key(d)
