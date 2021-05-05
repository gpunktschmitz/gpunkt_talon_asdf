mode: dictation
-
^dot$: key('.')
^undo$: key(ctrl-z)
# TOOD: make this work with ordinals for now it takes only numbers
^undo<number_small>$: key("ctrl-z:{number_small}")
^select word left$: key(ctrl-shift-left)
# TOOD: make this work with ordinals for now it takes only numbers
^select word left<number_small>$: key("ctrl-shift-left:{number_small}")