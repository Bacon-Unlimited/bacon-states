# windows:SUPPORTED_Windows7
#
# This policy setting allows you to specify if Windows should enable the desktop background slideshow.
# 
# If you enable this policy setting, desktop background slideshow is enabled.
# 
# If you disable this policy setting, the desktop background slideshow is disabled.
# 
# If you disable or do not configure this policy setting, users control this setting.
Turn on desktop background slideshow (on battery):
  lgpo.set:
  - name: EnableDesktopSlideShowDC
  - setting: Enabled
  - policy_class: Machine
