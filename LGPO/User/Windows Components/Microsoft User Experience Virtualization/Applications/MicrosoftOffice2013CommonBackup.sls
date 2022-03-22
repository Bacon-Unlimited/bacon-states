# windows:SUPPORTED_Windows7
#
# 
# This policy setting configures the backup of certain user settings which are common between the Microsoft Office Suite 2013 applications.
# Microsoft Office Suite 2013 has user settings which are common between applications and are backed up instead of synchronizing between computers. Use the policy setting to suppress the backup of specific common Microsoft Office Suite 2013 applications.
# If you enable this policy setting, certain user settings which are common between the Microsoft Office Suite 2013 applications will continue to be backed up.
# If you disable this policy setting, certain user settings which are common between the Microsoft Office Suite 2013 applications will not be backed up. 
# If you do not configure this policy setting, any defined values will be deleted.
#       
Common 2013 backup only:
  lgpo.set:
  - name: MicrosoftOffice2013CommonBackup
  - setting: Enabled
  - policy_class: User
