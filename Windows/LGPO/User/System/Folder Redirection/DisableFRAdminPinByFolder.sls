# windows:SUPPORTED_Windows8
#
# This policy setting allows you to control whether individual redirected shell folders are available offline by default.
# 
# For the folders affected by this setting, users must manually select the files they wish to make available offline.
# 
# If you disable or do not configure this policy setting, all redirected shell folders are automatically made available offline. All subfolders within the redirected folders are also made available offline.
# 
# Note: This policy setting does not prevent files from being automatically cached if the network share is configured for "Automatic Caching", nor does it affect the availability of the "Always available offline" menu option in the user interface.
# 
# Note: The configuration of this policy for any folder will override the configured value of "Do not automatically make all redirected folders available offline".
Do not automatically make specific redirected folders available offline:
  lgpo.set:
  - name: DisableFRAdminPinByFolder
  - setting:
      DisablePinAppDataRoaming: boolean-placeholder
      DisablePinContacts: boolean-placeholder
      DisablePinDesktop: boolean-placeholder
      DisablePinDocuments: boolean-placeholder
      DisablePinDownloads: boolean-placeholder
      DisablePinFavorites: boolean-placeholder
      DisablePinLinks: boolean-placeholder
      DisablePinMusic: boolean-placeholder
      DisablePinPictures: boolean-placeholder
      DisablePinSavedGames: boolean-placeholder
      DisablePinSearches: boolean-placeholder
      DisablePinStartMenu: boolean-placeholder
      DisablePinVideos: boolean-placeholder
  - policy_class: User
