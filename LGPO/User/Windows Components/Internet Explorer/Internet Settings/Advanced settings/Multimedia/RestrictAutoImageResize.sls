# SUPPORTED_IE7
#
# This policy setting specifies that you want Internet Explorer to automatically resize large images so that they fit in the browser window.
# 
# If you enable this policy setting, automatic image resizing is turned off. The user cannot change this setting.
# 
# If you disable this policy setting, automatic image resizing is turned on. The user cannot change this setting.
# 
# If you do not configure this policy setting, the user can turn on or off automatic image resizing.
Turn off automatic image resizing:
  lgpo.set:
  - name: RestrictAutoImageResize
  - setting: Enabled
  - policy_class: User
