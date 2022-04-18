# windows:SUPPORTED_Windows7
#
# 
# This policy setting configures the synchronization of user settings which are common between the Microsoft Office Suite 2013 applications.
# By default, the user settings which are common between the Microsoft Office Suite 2013 applications synchronize between computers. Use the policy setting to prevent the user settings which are common between the Microsoft Office Suite 2013 applications from synchronization between computers.
# If you enable this policy setting, the user settings which are common between the Microsoft Office Suite 2013 applications continue to synchronize.
# If you disable this policy setting, the user settings which are common between the Microsoft Office Suite 2013 applications are excluded from the synchronization settings. If any of the Microsoft Office Suite 2013 applications are enabled, this policy setting should not be disabled.
# If you do not configure this policy setting, any defined values will be deleted.
#       
Microsoft Office 2013 Common Settings:
  lgpo.set:
  - name: MicrosoftOffice2013Common
  - setting: Enabled
  - policy_class: Machine
