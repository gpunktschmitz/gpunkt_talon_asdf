mode: all
-
# as i had trouble (before conformer) to say "talon" i changed it to a random name .. "peter"
^peter [goto] [a]sleep$: speech.disable()
^peter [a]wake [up]$: speech.enable()
# i set my "start/application menu" to "ctrl+super"
^peter menu$: key(ctrl-super)
# custom command to show shutdown/hibernate/suspend-dialog
^peter power$: key(ctrl-alt-delete)
# custom command to restart talon
^peter restart talon$: key(ctrl-alt-h)
# toggle notify
^peter notify$: user.notify_toggle()
# closing any app/window
^(win[dow]|app|application) close$: key(alt-f4)
# cancel out
^cancel$: key(escape)
# junk to delete to the right
^junk right$: key(delete)
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
    sleep(200ms)
    key('x')
^win[dow] min[imize]$:
    key(alt-space)
    sleep(200ms)
    key('n')
^win[dow] [always] [on] top$:
    key(alt-space)
    sleep(200ms)
    key('t')
# alternative to open/close mouse grid
^mouse grid$:
    user.grid_select_screen(1)
    user.grid_activate()
^mouse grid off$: user.grid_close()
^mouse control [toggle|off]$: user.mouse_toggle_control_mouse()
^mouse zoom [toggle|off]$: user.mouse_toggle_zoom_mouse()
^mouse calibrate$: user.mouse_calibrate()
# globally defined shortcut for playing and pausing music
^music (play|pause)$: key(ctrl-alt-p)
# globally defined shortcut for skipping track
^music next$: key(ctrl-alt-n)
# alternatives for more reliable recognition
^ditto$: key('"')
^wiggle$: key('~')
^money boy$: key('$')
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
