# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to configure how File Explorer displays thumbnail images or icons on the local computer.
# 
# File Explorer displays thumbnail images by default. 
# 
# If you enable this policy setting, File Explorer displays only icons and never displays thumbnail images.
# 
# If you disable or do not configure this policy setting, File Explorer displays only thumbnail images.
Turn off the display of thumbnails and only display icons.:
  lgpo.set:
  - name: DisableThumbnails
  - setting: Enabled
  - policy_class: User
