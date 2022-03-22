# windows:SUPPORTED_Windows7
#
# This policy setting configures the synchronization of user settings for Internet Explorer 9.
# By default, the user settings of Internet Explorer 9 synchronize between computers. Use the policy setting to prevent the user settings for Internet Explorer 9 from synchronization between computers. 
# If you enable this policy setting, the Internet Explorer 9 user settings continue to synchronize. 
# If you disable this policy setting, Internet Explorer 9 user settings are excluded from the synchronization settings.
# If you do not configure this policy setting, any defined values will be deleted.
#       
Internet Explorer 9:
  lgpo.set:
  - name: InternetExplorer9
  - setting: Enabled
  - policy_class: User
