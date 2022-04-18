# windows:SUPPORTED_Win2k
#
# Removes items in the All Users profile from the Programs menu on the Start menu.
# 
# By default, the Programs menu contains items from the All Users profile and items from the user's profile. If you enable this setting, only items in the user's profile appear in the Programs menu.
# 
# Tip: To see the Program menu items in the All Users profile, on the system drive, go to ProgramData\Microsoft\Windows\Start Menu\Programs.
Remove common program groups from Start Menu:
  lgpo.set:
  - name: NoCommonGroups
  - setting: Enabled
  - policy_class: User
