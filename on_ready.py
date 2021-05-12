from talon import actions, app
def on_ready():
    actions.speech.disable()
    actions.speech.set_microphone('Yeti Stereo Microphone Analog Stereo')
app.register('launch', on_ready)