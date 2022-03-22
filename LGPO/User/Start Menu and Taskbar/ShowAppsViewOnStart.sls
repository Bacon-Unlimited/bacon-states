# windows:SUPPORTED_Windows_6_3only
#
# This policy setting allows the Apps view to be opened by default when the user goes to Start.
# 
# If you enable this policy setting, the Apps view will appear whenever the user goes to Start.  Users will still be able to switch between the Apps view and the Start screen.
# 
# If you disable or don’t configure this policy setting, the Start screen will appear by default whenever the user goes to Start, and the user will be able to switch between the Apps view and the Start screen. Also, the user will be able to configure this setting.
Show the Apps view automatically when the user goes to Start:
  lgpo.set:
  - name: ShowAppsViewOnStart
  - setting: Enabled
  - policy_class: User
