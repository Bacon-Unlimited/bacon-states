# products:MicrosoftWindowsVista_SP1
#
# Turns off the caching of thumbnails in hidden thumbs.db files.
# 
# This policy setting allows you to configure File Explorer to cache thumbnails of items residing in network folders in hidden thumbs.db files.
# 
# If you enable this policy setting, File Explorer does not create, read from, or write to thumbs.db files.
# 
# If you disable or do not configure this policy setting, File Explorer creates, reads from, and writes to thumbs.db files.
# 
Turn off the caching of thumbnails in hidden thumbs.db files:
  lgpo.set:
  - name: DisableThumbsDBOnNetworkFolders
  - setting: Enabled
  - policy_class: User
