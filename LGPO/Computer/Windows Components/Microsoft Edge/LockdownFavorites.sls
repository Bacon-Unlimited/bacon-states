# SUPPORTED_INTERNET_BROWSER_WIN10RS3RELEASE
#
# This policy setting lets you decide whether employees can add, import, sort, or edit the Favorites list on Microsoft Edge.
# 
# If you enable this setting, employees won't be able to add, import, or change anything in the Favorites list. Also as part of this, Save a Favorite, Import settings, and the context menu items (such as, Create a new folder) are all turned off.
# 
# Important
# Don't enable both this setting and the Keep favorites in sync between Internet Explorer and Microsoft Edge setting. Enabling both settings stops employees from syncing their favorites between Internet Explorer and Microsoft Edge.
# 
# If you disable or don't configure this setting (default), employees can add, import and make changes to the Favorites list.
Prevent changes to Favorites on Microsoft Edge:
  lgpo.set:
  - name: LockdownFavorites
  - setting: Enabled
  - policy_class: Machine
