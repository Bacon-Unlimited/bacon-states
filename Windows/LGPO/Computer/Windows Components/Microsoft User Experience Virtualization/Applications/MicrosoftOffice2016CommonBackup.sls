# windows:SUPPORTED_Windows_10_0_NOARM
#
# 
# This policy setting configures the backup of certain user settings which are common between the Microsoft Office Suite 2016 applications.
# Microsoft Office Suite 2016 has user settings which are common between applications and are backed up instead of synchronizing between computers. Use the policy setting to suppress the backup of specific common Microsoft Office Suite 2016 applications.
# If you enable this policy setting, certain user settings which are common between the Microsoft Office Suite 2016 applications will continue to be backed up.
# If you disable this policy setting, certain user settings which are common between the Microsoft Office Suite 2016 applications will not be backed up. 
# If you do not configure this policy setting, any defined values will be deleted.
#       
Common 2016 backup only:
  lgpo.set:
  - name: MicrosoftOffice2016CommonBackup
  - setting: Enabled
  - policy_class: Machine
