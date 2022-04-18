# windows:SUPPORTED_Windows7
#
# 
# This policy setting configures the synchronization of user settings for Microsoft PowerPoint 2013.
# By default, the user settings of Microsoft PowerPoint 2013 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft PowerPoint 2013 from synchronization between computers.
# If you enable this policy setting, Microsoft PowerPoint 2013 user settings continue to synchronize.
# If you disable this policy setting, Microsoft PowerPoint 2013 user settings are excluded from the synchronization settings.
# If you do not configure this policy setting, any defined values will be deleted.
#       
Microsoft PowerPoint 2013:
  lgpo.set:
  - name: MicrosoftOffice2013PowerPoint
  - setting: Enabled
  - policy_class: Machine
