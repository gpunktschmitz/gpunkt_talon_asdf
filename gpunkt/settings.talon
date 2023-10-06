-
settings():
    speech.record_all = 0
    speech.timeout = 0.500
    # for windows when running next to dragon - force talon to use wav2letter 
    speech.engine = "wav2letter"
