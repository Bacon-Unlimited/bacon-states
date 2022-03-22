# SUPPORTED_IE7
#
# This policy setting allows you to define the user experience related to how pop-up windows appear in tabbed browsing in Internet Explorer.
# 
# If you enable this policy setting, the user cannot configure pop-up windows in tabbed browsing. You must specify one of the following values:
#     0: Let Internet Explorer decide.
#     1: Force pop-up windows to open in new windows.
#     2: Force pop-up windows to open on new tabs.
# 
# If you disable or do not configure this policy setting, Internet Explorer uses the user's setting for pop-up windows in tabbed browsing.
Turn off configuration of pop-up windows in tabbed browsing:
  lgpo.set:
  - name: NoTabBrowsingPopups
  - setting:
      PopUpList: enum-placeholder
  - policy_class: User
