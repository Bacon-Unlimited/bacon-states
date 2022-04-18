# windows:SUPPORTED_Windows_10_0_RS4
#
# This policy allows you to prevent the Start Menu from displaying a list of recently installed applications.
# 
# If you enable this policy, the Start Menu will no longer display the "Recently added" list.  The corresponding setting will also be disabled in Settings.
Remove "Recently added" list from Start Menu:
  lgpo.set:
  - name: HideRecentlyAddedApps
  - setting: Enabled
  - policy_class: User
