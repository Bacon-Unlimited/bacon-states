# windows:SUPPORTED_Windows_6_3only
#
# This policy setting prevents the user from searching apps, files, settings (and the web if enabled) when the user searches from the Apps view.
# 
# This policy setting is only applied when the Apps view is set as the default view for Start.
# 
# If you enable this policy setting, searching from the Apps view will only search the list of installed apps.
# 
# If you disable or dont configure this policy setting, the user can configure this setting.
Search just apps from the Apps view:
  lgpo.set:
  - name: DisableGlobalSearchOnAppsView
  - setting: Enabled
  - policy_class: User
