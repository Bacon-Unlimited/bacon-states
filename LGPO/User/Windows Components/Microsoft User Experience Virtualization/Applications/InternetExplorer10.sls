# windows:SUPPORTED_Windows7
#
# This policy setting configures the synchronization of user settings of Internet Explorer 10.
# By default, the user settings of Internet Explorer 10 synchronize between computers. Use the policy setting to prevent the user settings for Internet Explorer 10 from synchronization between computers. 
# If you enable this policy setting, the Internet Explorer 10 user settings continue to synchronize. 
# If you disable this policy setting, Internet Explorer 10 user settings are excluded from the synchronization settings.
# If you do not configure this policy setting, any defined values will be deleted.
#       
Internet Explorer 10:
  lgpo.set:
  - name: InternetExplorer10
  - setting: Enabled
  - policy_class: User
