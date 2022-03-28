# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to manage how long a computer must be inactive before Windows turns off the computers display.
# 
# If you enable this policy setting, Windows automatically adjusts the setting based on what users do with their keyboard or mouse to keep the display on.
# 
# If you disable this policy setting, Windows uses the same setting regardless of users keyboard or mouse behavior.
# 
# If you do not configure this policy setting, users control this setting.
Turn off adaptive display timeout (on battery):
  lgpo.set:
  - name: VideoAdaptivePowerDownTimeOutDC_2
  - setting: Enabled
  - policy_class: Machine
