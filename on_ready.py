from talon import actions, app
def on_ready():
    actions.speech.disable()
app.register('launch', on_ready)
