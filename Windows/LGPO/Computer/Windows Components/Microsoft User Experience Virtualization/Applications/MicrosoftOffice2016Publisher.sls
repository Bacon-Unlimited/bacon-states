# windows:SUPPORTED_Windows_10_0_NOARM
#
# 
# This policy setting configures the synchronization of user settings for Microsoft Publisher 2016.
# By default, the user settings of Microsoft Publisher 2016 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft Publisher 2016 from synchronization between computers.
# If you enable this policy setting, Microsoft Publisher 2016 user settings continue to synchronize.
# If you disable this policy setting, Microsoft Publisher 2016 user settings are excluded from the synchronization settings.
# If you do not configure this policy setting, any defined values will be deleted.
#       
Microsoft Publisher 2016:
  lgpo.set:
  - name: MicrosoftOffice2016Publisher
  - setting: Enabled
  - policy_class: Machine
