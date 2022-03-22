# SUPPORTED_WMP9
#
# This policy setting allows a screen saver to interrupt playback.
# 
# If you enable this policy setting, a screen saver is displayed during playback of digital media according to the options selected on the Screen Saver tab in the Display Properties dialog box in Control Panel. The Allow screen saver during playback check box on the Player tab in the Player is selected and is not available.
# 
# If you disable this policy setting, a screen saver does not interrupt playback even if users have selected a screen saver. The Allow screen saver during playback check box is cleared and is not available.
# 
# If you do not configure this policy setting, users can change the setting for the Allow screen saver during playback check box.
Allow Screen Saver:
  lgpo.set:
  - name: EnableScreenSaver
  - setting: Enabled
  - policy_class: User
