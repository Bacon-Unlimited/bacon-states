# SUPPORTED_IE7_10
#
# This policy setting allows you to turn off tabbed browsing and related entry points from the Internet Explorer user interface. Starting with Windows 8, this policy only applies to Internet Explorer on the desktop.
# 
# If you enable this policy setting, tabbed browsing and related entry points are turned off for Internet Explorer, and the user cannot turn them on.
# 
# If you disable this policy setting, tabbed browsing and related entry points appear on the user interface for Internet Explorer, and the user cannot turn them off.
# 
# If you do not configure this policy setting, the user can turn on or turn off tabbed browsing.
Turn off tabbed browsing:
  lgpo.set:
  - name: NoTabBrowsing_1
  - setting: Enabled
  - policy_class: User
