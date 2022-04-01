# WinBlueOnly
#
# This policy setting configures whether or not locations on removable drives can be added to libraries.
#       
# If you enable this policy setting, locations on removable drives cannot be added to libraries.  In addition, locations on removable drives cannot be indexed.
# 
# If you disable or do not configure this policy setting, locations on removable drives can be added to libraries.  In addition, locations on removable drives can be indexed.
Do not allow locations on removable drives to be added to libraries:
  lgpo.set:
  - name: DisableRemovableDriveIndexing
  - setting: Enabled
  - policy_class: Machine
