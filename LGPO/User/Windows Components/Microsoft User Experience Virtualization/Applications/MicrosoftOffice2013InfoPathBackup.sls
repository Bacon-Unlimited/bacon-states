# windows:SUPPORTED_Windows7
#
# 
# This policy setting configures the backup of certain user settings for Microsoft InfoPath 2013.
# Microsoft InfoPath 2013 has user settings that are backed up instead of synchronizing between computers. Use the policy setting to suppress the backup of specific Microsoft InfoPath 2013 settings.
# If you enable this policy setting, certain user settings of Microsoft InfoPath 2013 will continue to be backed up.
# If you disable this policy setting, certain user settings of Microsoft InfoPath 2013 will not be backed up.
# If you do not configure this policy setting, any defined values will be deleted.
#       
InfoPath 2013 backup only:
  lgpo.set:
  - name: MicrosoftOffice2013InfoPathBackup
  - setting: Enabled
  - policy_class: User
