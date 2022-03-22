# SUPPORTED_IE7
#
# This policy setting allows you to configure how new tabs are created by default in Internet Explorer.
# 
# If you enable this policy setting, the user cannot configure how new tabs are created by default. You must specify whether tabs should open in the foreground or in the background. The user cannot open the tabs in the background by pressing Ctrl+Shift+Select or open the tabs in the foreground by pressing Ctrl+Shift+Select.
# 
# If you disable or do not configure this policy setting, the user can configure how new tabs are created by default.
Prevent configuration of new tab creation:
  lgpo.set:
  - name: TabOpenInFgndBgnd
  - setting:
      ForeGndBackGnd: enum-placeholder
  - policy_class: Machine
