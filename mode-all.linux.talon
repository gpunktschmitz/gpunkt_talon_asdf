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
^peter power restart$:
    key(ctrl-alt-delete)
    sleep(200ms)
    key(alt-s)
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
# custom shortcut to execute 'xinput --set-prop "Lenovo Optical Mouse" "libinput Accel Speed" 0' which sets the mouse speed for the external mouse (and keep the default for the trackpoint)
^mouse speed$: key(ctrl-alt-m)