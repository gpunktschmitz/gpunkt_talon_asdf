from talon import ui, ctrl, Module

mod = Module()
@mod.action_class
class Actions:
    def slack_close_right_sidebar():
        "close right sidebar"
        rect = ui.active_window().rect
        old_x, old_y = ctrl.mouse_pos()
        x = rect.width - 30
        ctrl.mouse_move(x, 123)
        ctrl.mouse_click()
        ctrl.mouse_move(old_x, old_y)
    def print_mouse_win():
        "print active win rect"
        rect = ui.active_window().rect
        x, y = ctrl.mouse_pos()
        print(rect)
        print('mouse position absolute:',x,y)
        print('mouse position relative (top/left):',x - rect.left, y - rect.top)
        print('mouse position relative (bottom/right):',rect.right - x - 1, rect.bot - y - 1)
