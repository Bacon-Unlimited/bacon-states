# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies whether or not the user is prompted for a password when the system resumes from sleep.
# 
# If you enable or do not configure this policy setting, the user is prompted for a password when the system resumes from sleep.
# 
# If you disable this policy setting, the user is not prompted for a password when the system resumes from sleep.
Require a password when a computer wakes (plugged in):
  lgpo.set:
  - name: ACPromptForPasswordOnResume_2
  - setting: Enabled
  - policy_class: Machine
