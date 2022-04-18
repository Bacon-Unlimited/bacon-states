# windows:SUPPORTED_Windows_6_3only
#
# This policy setting lets you disable OneDrive as the default save location. It does not prevent apps and users from saving files on OneDrive. If you disable this policy setting, files will be saved locally by default. Users will still be able to change the value of this setting to save to OneDrive by default. They will also be able to open and save files on OneDrive using the OneDrive app and file picker, and Windows Store apps will still be able to access OneDrive using the WinRT API. If you enable or do not configure this policy setting, users with a connected account will save documents to OneDrive by default.
Save documents to OneDrive by default:
  lgpo.set:
  - name: DisableLibrariesDefaultSaveToOneDrive
  - setting: Enabled
  - policy_class: Machine
