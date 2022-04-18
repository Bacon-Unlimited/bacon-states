# SUPPORTED_IE7
#
# This policy setting specifies whether graphical images are included when pages are displayed.
# 
# Sometimes, pages that contain several graphical images are displayed very slowly. If you want to display pages more quickly, you can turn off image display.
# 
# If you enable this policy setting, images do not appear. The user cannot turn on image display. However, the user can still display an individual image by right-clicking the icon that represents the image and then clicking Show Picture. The "Allow the display of image download placeholders" policy setting must be disabled if this policy setting is enabled.
# 
# If you disable this policy setting, images appear. The user cannot turn off image display.
# 
# If you do not configure this policy setting, the user can turn on or turn off image display.
Turn off image display:
  lgpo.set:
  - name: ShowPictures
  - setting: Enabled
  - policy_class: User
