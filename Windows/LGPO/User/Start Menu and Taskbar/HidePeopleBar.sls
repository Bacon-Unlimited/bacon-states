# windows:SUPPORTED_Windows_10_0_RS2
#
# This policy allows you to remove the People Bar from the taskbar and disables the My People experience.
# 
# If you enable this policy the people icon will be removed from the taskbar, the corresponding settings toggle is removed from the taskbar settings page, and users will not be able to pin people to the taskbar.
Remove the People Bar from the taskbar:
  lgpo.set:
  - name: HidePeopleBar
  - setting: Enabled
  - policy_class: User
