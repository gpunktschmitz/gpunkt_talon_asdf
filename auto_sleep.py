from talon import ui, actions, cron, speech_system, app

job = None
timeout = '5m'

def handle_timeout():
    actions.speech.disable()
    if actions.tracking.control_enabled():
        actions.tracking.control_toggle()

def on_phrase(j):
    global job
    if j.get('phrase'):
        cron.cancel(job)
        job = cron.after(timeout, handle_timeout)

speech_system.register('post:phrase', on_phrase)

def on_ready():
    global job
    if actions.speech.enabled():
        job = cron.after(timeout, handle_timeout)

app.register("ready", on_ready)

# https://github.com/nriley/knausj_talon/blob/nriley/misc/screen.py
ui.register('screen_sleep', lambda e: actions.speech.disable())
# ui.register('screen_wake')
