from talon import Module
mod = Module()
@mod.action_class
class Actions:
    def action1():
        """prints hi"""
        print('hi')
    def action2(name: str, number: int):
        """prints a name and number"""
        print(name, number)
# in a .talon file now you can user.action1() or user.action2("name", 5)

