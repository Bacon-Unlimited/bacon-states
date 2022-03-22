# windows:SUPPORTED_Windows_10_0_NOARM
#
# 
# This policy setting configures the backup of certain user settings for Microsoft Outlook 2016.
# Microsoft Outlook 2016 has user settings that are backed up instead of synchronizing between computers. Use the policy setting to suppress the backup of specific Microsoft Outlook 2016 settings.
# If you enable this policy setting, certain user settings of Microsoft Outlook 2016 will continue to be backed up.
# If you disable this policy setting, certain user settings of Microsoft Outlook 2016 will not be backed up.
# If you do not configure this policy setting, any defined values will be deleted.
#       
Outlook 2016 backup only:
  lgpo.set:
  - name: MicrosoftOffice2016OutlookBackup
  - setting: Enabled
  - policy_class: User
