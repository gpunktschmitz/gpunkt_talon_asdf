mode: all
-
# as i had trouble (before conformer) to say "talon" i changed it to a random name .. "peter"
^peter [goto] [a]sleep$:
    speech.disable()
    user.mouse_toggle_control_mouse()
^peter [a]wake [up]$: 
    speech.enable()
    user.mouse_toggle_control_mouse()
^peter (geschlafen|geh schlafen)$: 
    speech.disable()
    user.mouse_toggle_control_mouse()
^peter (wach auf)$: 
    speech.enable()
    user.mouse_toggle_control_mouse()
# custom command to restart talon
^peter restart talon$: key(ctrl-alt-h)
# toggle notify
^peter notify$: user.notify_toggle()
# closing any app/window
^(win[dow]|app|application) close$: key(alt-f4)
# cancel out
^cancel$: key(escape)
# delete to the right
^(junk|scratch) right$: key(delete)
^scratch right <user.ordinals>$: key("delete:{ordinals}")
^junk right <number_small>$: key("delete:{number_small}")
# delete
^(junk|scratch)$: key(backspace)
^scratch <user.ordinals>$: key("backspace:{ordinals}")
^junk <number_small>$: key("backspace:{number_small}")
# open context menu
^context$: key(alt-space)
^file context$: key(shift-f10)
# switch application
^[app] switch$: key(alt-tab)
# alternative to open/close mouse grid
^mouse grid$:
    user.grid_select_screen(1)
    user.grid_activate()
^mouse grid off$: user.grid_close()
^mouse control [toggle|off]$: user.mouse_toggle_control_mouse()
^mouse zoom [toggle|off]$: user.mouse_toggle_zoom_mouse()
^mouse calibrate$: user.mouse_calibrate()
^mouse print position$: user.print_mouse_position()
# globally defined shortcut for playing and pausing music
^music (play|pause)$: key(ctrl-alt-p)
# globally defined shortcut for skipping track
^music next$: key(ctrl-alt-n)
# globally defined shortcut for custom script to mute music for a minute
^music mute ad$: key(ctrl-alt-a)
# alternatives for more reliable recognition
^tick$: key("'")
^ditto$: key('"')
^wiggle$: key('~')
^money boy$: key('$')
^put$: key(space)
^(delhi|deli)$: key(delete)
# ascii art
^shrug$: "¯\_(ツ)_/¯"
# skip "that" for those commands
^copy$: edit.copy()
^cut$: edit.cut()
^paste$: edit.paste()
^undo$: edit.undo()
^redo$: edit.redo()
# mark all
^mara$: key(ctrl-a)
# spaced symbols
^sequels$: " = "
^spipe$: " | "
(stale | still): user.pause_mouse_control()