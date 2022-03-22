# windows:SUPPORTED_Windows7
#
# This policy setting configures the synchronization of user settings for Microsoft InfoPath 2010.
# By default, the user settings of Microsoft InfoPath 2010 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft InfoPath 2010 from synchronization between computers.
# If you enable this policy setting, Microsoft InfoPath 2010 user settings continue to synchronize.
# If you disable this policy setting, Microsoft InfoPath 2010 user settings are excluded from the synchronization settings.
# If you do not configure this policy setting, any defined values will be deleted.
#       
Microsoft InfoPath 2010:
  lgpo.set:
  - name: MicrosoftOffice2010InfoPath
  - setting: Enabled
  - policy_class: User
