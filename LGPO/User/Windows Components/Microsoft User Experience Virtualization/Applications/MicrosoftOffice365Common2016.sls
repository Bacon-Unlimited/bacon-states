# windows:SUPPORTED_Windows_10_0_NOARM
#
# 
# This policy setting configures the synchronization of user settings which are common between the Microsoft Office Suite 2016 applications.
# Microsoft Office 365 synchronizes certain settings by default without UE-V. If the synchronization capabilities of Microsoft Office 365 are disabled, then the user settings which are common between the Microsoft Office Suite 2016 applications will synchronize between a user’s work computers with UE-V by default. Use this policy setting to prevent the user settings which are common between the Microsoft Office Suite 2016 applications from synchronization between computers with UE-V.
# If you enable this policy setting, user settings which are common between the Microsoft Office Suite 2016 applications continue to synchronize with UE-V.
# If you disable this policy setting, user settings which are common between the Microsoft Office Suite 2016 applications are excluded from synchronization with UE-V.
# If you do not configure this policy setting, any defined values will be deleted.
#       
Microsoft Office 365 Common 2016:
  lgpo.set:
  - name: MicrosoftOffice365Common2016
  - setting: Enabled
  - policy_class: User
