# windows:SUPPORTED_Windows_6_3only
#
# This policy setting allows desktop apps to be listed first in the Apps view in Start.
# 
# If you enable this policy setting, desktop apps would be listed first when the apps are sorted by category in the Apps view. The other sorting options would continue to be available and the user could choose to change their default sorting options.
# 
# If you disable or don't configure this policy setting, the desktop apps won't be listed first when the apps are sorted by category, and the user can configure this setting.
List desktop apps first in the Apps view:
  lgpo.set:
  - name: DesktopAppsFirstInAppsView
  - setting: Enabled
  - policy_class: User
