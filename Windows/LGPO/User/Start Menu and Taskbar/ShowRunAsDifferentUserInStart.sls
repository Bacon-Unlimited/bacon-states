# windows:SUPPORTED_Windows8
#
# This policy setting shows or hides the "Run as different user" command on the Start application bar.
# 
# If you enable this setting, users can access the "Run as different user" command from Start for applications which support this functionality.
# 
# If you disable this setting or do not configure it, users cannot access the "Run as different user" command from Start for any applications.
# 
# Note: This setting does not prevent users from using other methods, such as the shift right-click menu on application's jumplists in the taskbar to issue the "Run as different user" command.
Show "Run as different user" command on Start:
  lgpo.set:
  - name: ShowRunAsDifferentUserInStart
  - setting: Enabled
  - policy_class: User
