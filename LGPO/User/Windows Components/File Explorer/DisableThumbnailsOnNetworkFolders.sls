# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to configure how File Explorer displays thumbnail images or icons on network folders.
# 
# File Explorer displays thumbnail images on network folders by default.
# 
# If you enable this policy setting, File Explorer displays only icons and never displays thumbnail images on network folders.
# 
# If you disable or do not configure this policy setting, File Explorer displays only thumbnail images on network folders.
Turn off the display of thumbnails and only display icons on network folders:
  lgpo.set:
  - name: DisableThumbnailsOnNetworkFolders
  - setting: Enabled
  - policy_class: User
