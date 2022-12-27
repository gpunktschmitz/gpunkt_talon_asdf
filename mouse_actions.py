from talon import ui, ctrl, Module

mod = Module()
@mod.action_class
class Actions:
    def print_mouse_position():
        "print active win rect"
        rect = ui.active_window().rect
        x, y = ctrl.mouse_pos()
        print(rect)
        print('mouse position absolute:',x,y)
        print('mouse position relative (top/left):',x - rect.left, y - rect.top)
        print('mouse position relative (bottom/right):',rect.right - x - 1, rect.bot - y - 1)
