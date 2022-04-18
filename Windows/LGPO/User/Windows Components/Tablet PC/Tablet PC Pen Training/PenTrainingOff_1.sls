# windows:SUPPORTED_WindowsVistaOnly
#
# Turns off Tablet PC Pen Training.
# 
# If you enable this policy setting, users cannot open Tablet PC Pen Training.
# 
# If you disable or do not configure this policy setting, users can open Tablet PC Pen Training.
Turn off Tablet PC Pen Training:
  lgpo.set:
  - name: PenTrainingOff_1
  - setting: Enabled
  - policy_class: User
