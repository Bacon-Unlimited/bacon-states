# windows:SUPPORTED_Windows7
#
# 
# This policy setting configures the synchronization of user settings for Microsoft Office 365 Excel 2013.
# Microsoft Office 365 synchronizes certain settings by default without UE-V. If the synchronization capabilities of Microsoft Office 365 are disabled, then the user settings of Microsoft Office 365 Excel 2013 will synchronize between a users work computers with UE-V by default. Use this policy setting to prevent the user settings of Microsoft Office 365 Excel 2013 from synchronization between computers with UE-V.
# If you enable this policy setting, Microsoft Office 365 Excel 2013 user settings continue to sync with UE-V.
# If you disable this policy setting, Microsoft Office 365 Excel 2013 user settings are excluded from synchronization with UE-V.
# If you do not configure this policy setting, any defined values will be deleted.
#       
Microsoft Office 365 Excel 2013:
  lgpo.set:
  - name: MicrosoftOffice365Excel2013
  - setting: Enabled
  - policy_class: Machine
