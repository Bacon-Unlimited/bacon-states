# windows:SUPPORTED_WindowsPreVista
#
# This policy setting controls how long Windows waits for a user response before it uses a default user profile for roaming user profiles.
# 
# The default user profile is applied when the user does not respond to messages explaining that any of the following events has occurred:
# 
# --  The system detects a slow connection between the user's computer and the server that stores users' roaming user profiles.
# 
# --  The system cannot access users' server-based profiles when users log on or off.
# 
# --  Users' local profiles are newer than their server-based profiles.
# 
# If you enable this policy setting, you can override the amount of time Windows waits for user input before using a default user profile for roaming user profiles. The default timeout value is 30 seconds. To use this policy setting, type the number of seconds Windows should wait for user input. The minumum value is 0 seconds, and the maximum is 600 seconds.
# 
# If you disable or do not configure this policy setting, Windows waits 30 seconds for user input before applying the default user profile .
Establish timeout value for dialog boxes:
  lgpo.set:
  - name: ProfileDlgTimeOut
  - setting:
      ProfileDlgWaitInterval: decimal-placeholder
  - policy_class: Machine
