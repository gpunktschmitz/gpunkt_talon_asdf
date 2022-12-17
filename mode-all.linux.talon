os: linux
mode: all
-
# mostly custom commands running linux mint (mate)

# i set my "start/application menu" to "ctrl+super"
^peter menu$: key(ctrl-super)
# show shutdown/hibernate/suspend-dialog
^peter power$: key(ctrl-alt-delete)
# send computer to sleep
^peter power sleep$:
    key(ctrl-alt-delete)
    sleep(200ms)
    key(alt-u)
# restart computer
^peter power restart$:
    key(ctrl-alt-delete)
    sleep(200ms)
    key(alt-r)
# shutdown computer
^peter power off$:
    key(ctrl-alt-delete)
    sleep(200ms)
    key(alt-s)
# window management (linux mint mate desktop)
^(allwin | win[dow] max[imize])$:
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
^win[dow] snap left$: key(super-left)
^win[dow] snap right$: key(super-right)
^win[dow] max height$: key(super-up)
^win[dow] max width$: key(super-down)
^win[dow] restore$:
    key(alt-space)
    sleep(200ms)
    key('x')
    key(alt-space)
    sleep(200ms)
    key('x')
# custom shortcut to set network, mouse speed, default audio output
^home office$: key(ctrl-alt-.)
awkward:"""awk 'OFS="\t"{{print $0}}'"""
# as the right sidebar in slack has no shortcut to close click to close
^slack close right sidebar$: user.slack_close_right_sidebar()
# print window rect info to console
^debug window rect$: user.print_mouse_win()