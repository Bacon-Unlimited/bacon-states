# SUPPORTED_INTERNET_BROWSER_WIN10V1703
#
# 
# This policy setting lets you decide whether employees see Microsoft's First Run webpage when opening Microsoft Edge for the first time.
# 
# If you enable this setting, employees won't see the First Run page when opening Microsoft Edge for the first time.
# 
# If you disable or don't configure this setting, employees will see the First Run page when opening Microsoft Edge for the first time.
Prevent the First Run webpage from opening on Microsoft Edge:
  lgpo.set:
  - name: PreventFirstRunPage
  - setting: Enabled
  - policy_class: User
