from talon import ui, ctrl, Module, actions, cron
    
mod = Module()
@mod.action_class
class Actions:
    def pause_mouse_control():
        "pause mouse control for specified time"
        actions.tracking.control_toggle()
        cron.after("5s", lambda: actions.tracking.control_toggle())
    def print_mouse_position():
        "print active win rect"
        rect = ui.active_window().rect
        x, y = ctrl.mouse_pos()
        print(rect)
        print('mouse position absolute:',x,y)
        print('mouse position relative (top/left):',x - rect.left, y - rect.top)
        print('mouse position relative (bottom/right):',rect.right - x - 1, rect.bot - y - 1)
        