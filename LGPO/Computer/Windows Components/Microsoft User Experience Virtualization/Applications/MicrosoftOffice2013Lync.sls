# windows:SUPPORTED_Windows7
#
# 
# This policy setting configures the synchronization of user settings for Microsoft Lync 2013.
# By default, the user settings of Microsoft Lync 2013 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft Lync 2013 from synchronization between computers.
# If you enable this policy setting, Microsoft Lync 2013 user settings continue to synchronize.
# If you disable this policy setting, Microsoft Lync 2013 user settings are excluded from the synchronization settings.
# If you do not configure this policy setting, any defined values will be deleted.
#       
Microsoft Lync 2013:
  lgpo.set:
  - name: MicrosoftOffice2013Lync
  - setting: Enabled
  - policy_class: Machine
