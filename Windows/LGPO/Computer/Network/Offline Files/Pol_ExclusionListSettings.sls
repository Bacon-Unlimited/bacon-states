# windows:SUPPORTED_Windows7
#
# This policy setting enables administrators to block certain file types from being created in the folders that have been made available offline.
# 
# If you enable this policy setting, a user will be unable to create files with the specified file extensions in any of the folders that have been made available offline.
# 
# If you disable or do not configure this policy setting, a user can create a file of any type in the folders that have been made available offline.
Enable file screens:
  lgpo.set:
  - name: Pol_ExclusionListSettings
  - setting:
      Lbl_ExclusionListSettingsList: text-placeholder
  - policy_class: Machine
