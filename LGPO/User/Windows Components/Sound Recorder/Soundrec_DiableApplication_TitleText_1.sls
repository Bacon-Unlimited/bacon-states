# windows:SUPPORTED_WindowsVista
#
# Specifies whether Sound Recorder can run.
# 
# Sound Recorder is a feature of Microsoft Windows Vista that can be used to record sound from an audio input device where the recorded sound is encoded and saved as an audio file.
# 
# If you enable this policy setting, Sound Recorder will not run.
# 
# If you disable or do not configure this policy setting, Sound Recorder can be run.
Do not allow Sound Recorder to run:
  lgpo.set:
  - name: Soundrec_DiableApplication_TitleText_1
  - setting: Enabled
  - policy_class: User
