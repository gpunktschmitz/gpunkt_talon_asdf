mode: all
-
# as i had trouble (before conformer) to say "talon" i changed it to a random name .. "peter"
^peter [a]sleep$: speech.disable()
^peter [a]wake [up]$: speech.enable()
# i set my "start/application menu" to "ctrl+super"
^peter menu$: key(ctrl-super)
# to shutdown/hibernate/suspend i press "ctrl+alt+delete"
^peter power$: key(ctrl-alt-delete)
# closing any app/window
^(win[dow]|app|application) close$: key(alt-f4)
# cancel out
^cancel$: key(escape)
# junk to delete quickly
^junk$: key(backspace)
# TOOD: make this work with ordinals for now it takes only numbers
^junk <number_small>$: key("backspace:{number_small}")
# open context menu
^context$: key(alt-space)
# switch application
^[app] switch$: key(alt-tab)
# window management (linux mint mate desktop)
^win[dow] max[imize]$:
    key(alt-space)
    sleep(.2)
    key('x')
^win[dow] min[imize]$:
    key(alt-space)
    sleep(.2)
    key('n')
^win[dow] [always] [on] top$:
    key(alt-space)
    sleep(.2)
    key('t')
# alternative to open/close mouse grid
^mouse grid$:
    user.grid_select_screen(1)
    user.grid_activate()
^mouse grid off$: user.grid_close()
# alternatives for more reliable recognition
^ditto$: key('"')
^wiggle$: key(~)
^money boy$: key($)
^put$: key(space)
^(delhi|deli)$: key(delete)
^tab restore$: app.tab_reopen()
# ascii art
^shrug$: "¯\_(ツ)_/¯"
# host specific shortcuts
^mouse speed$: key(ctrl-alt-m)
# skip "that" for those commands
^copy$: edit.copy()
^cut$: edit.cut()
^paste$: edit.paste()
^undo$: edit.undo()
^redo$: edit.redo()
