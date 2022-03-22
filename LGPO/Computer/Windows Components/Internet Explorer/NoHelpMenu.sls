# SUPPORTED_IE7
#
# This policy setting prevents the user from accessing Help in Internet Explorer.
# 
# If you enable this policy setting, the following occur:
#     • The Help menu on the menu bar is not functional.
#     • Help is removed from the Command bar.
#     • The shortcut key F1 does not make Help appear.
#     • Help cannot be accessed from the Settings charm (starting with Internet Explorer 10 on Windows 8).
# 
# If you disable or do not configure this policy setting, the Internet Explorer Help menu is available to the user. The user can also use the Command bar and F1 to access Help.
Prevent access to Internet Explorer Help:
  lgpo.set:
  - name: NoHelpMenu
  - setting: Enabled
  - policy_class: Machine
