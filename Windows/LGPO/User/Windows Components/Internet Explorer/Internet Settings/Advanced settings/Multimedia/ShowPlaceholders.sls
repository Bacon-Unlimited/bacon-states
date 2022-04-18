# SUPPORTED_IE7
#
# This policy setting specifies whether placeholders appear for graphical images while the images are downloading. This allows items on the page to be positioned where they will appear when the images are completely downloaded. This option is ignored if the Show Pictures check box is cleared.
# 
# If you enable this policy setting, placeholders appear for graphical images while the images are downloading. The user cannot change this policy setting. The "Turn off image display" policy setting must be disabled if this policy setting is enabled.
# 
# If you disable this policy setting, placeholders will not appear for graphical images while the images are downloading. The user cannot change this policy setting.
# 
# If you do not configure this policy setting, the user can allow or prevent the display of placeholders for graphical images while the images are downloading.
Allow the display of image download placeholders:
  lgpo.set:
  - name: ShowPlaceholders
  - setting: Enabled
  - policy_class: User
