# windows:SUPPORTED_Windows7
#
# This policy setting configures the synchronization of user settings which are common between the versions of Internet Explorer.
# By default, the user settings which are common between the versions of Internet Explorer synchronize between computers. Use the policy setting to prevent the user settings of Internet Explorer from synchronization between computers. 
# If you enable this policy setting, the user settings which are common between the versions of Internet Explorer continue to synchronize.
# If you disable this policy setting, the user settings which are common between the versions of Internet Explorer are excluded from settings synchronization. If any version of the Internet Explorer settings are enabled this policy setting should not be disabled.
# If you do not configure this policy setting, any defined values will be deleted.
#       
Internet Explorer Common Settings:
  lgpo.set:
  - name: InternetExplorerCommon
  - setting: Enabled
  - policy_class: Machine
