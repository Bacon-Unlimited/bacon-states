# windows:SUPPORTED_Windows7
#
# 
# This policy setting configures the backup of certain user settings for Microsoft Word 2013.
# Microsoft Word 2013 has user settings that are backed up instead of synchronizing between computers. Use the policy setting to suppress the backup of specific Microsoft Word 2013 settings.
# If you enable this policy setting, certain user settings of Microsoft Word 2013 will continue to be backed up.
# If you disable this policy setting, certain user settings of Microsoft Word 2013 will not be backed up.
# If you do not configure this policy setting, any defined values will be deleted.
#       
Word 2013 backup only:
  lgpo.set:
  - name: MicrosoftOffice2013WordBackup
  - setting: Enabled
  - policy_class: User
