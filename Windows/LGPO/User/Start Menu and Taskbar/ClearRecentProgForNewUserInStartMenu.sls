# windows:SUPPORTED_Windows7ToVistaAndWindows10
#
# If you enable this policy setting, the recent programs list in the start menu will be blank for each new user.
# 
# If you disable or do not configure this policy, the start menu recent programs list will be pre-populated with programs for each new user.
Clear the recent programs list for new users:
  lgpo.set:
  - name: ClearRecentProgForNewUserInStartMenu
  - setting: Enabled
  - policy_class: User
