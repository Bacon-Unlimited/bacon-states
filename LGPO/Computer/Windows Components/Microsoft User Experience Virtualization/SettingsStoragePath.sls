# windows:SUPPORTED_Windows7
#
# This policy setting configures where the settings package files that contain user settings are stored. 
# If you enable this policy setting, the user settings are stored in the specified location. 
# If you disable or do not configure this policy setting, the user settings are stored in the users home directory if configured for your environment. 
#       
Settings storage path:
  lgpo.set:
  - name: SettingsStoragePath
  - setting:
      SettingsStoragePath: text-placeholder
  - policy_class: Machine
