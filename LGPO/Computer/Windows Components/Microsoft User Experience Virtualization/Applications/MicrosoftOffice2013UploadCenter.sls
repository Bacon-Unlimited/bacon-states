# windows:SUPPORTED_Windows7
#
# 
# This policy setting configures the synchronization of user settings for Microsoft Office 2013 Upload Center.
# By default, the user settings of Microsoft Office 2013 Upload Center synchronize between computers. Use the policy setting to prevent the user settings of Microsoft Office 2013 Upload Center from synchronization between computers.
# If you enable this policy setting, Microsoft Office 2013 Upload Center user settings continue to synchronize.
# If you disable this policy setting, Microsoft Office 2013 Upload Center user settings are excluded from the synchronization settings.
# If you do not configure this policy setting, any defined values will be deleted.
#       
Microsoft Office 2013 Upload Center:
  lgpo.set:
  - name: MicrosoftOffice2013UploadCenter
  - setting: Enabled
  - policy_class: Machine
