from talon import actions, app
def on_ready():
    actions.speech.set_microphone('Yeti Stereo Microphone Analog Stereo')
    actions.tracking.control_toggle()
app.register('launch', on_ready)
