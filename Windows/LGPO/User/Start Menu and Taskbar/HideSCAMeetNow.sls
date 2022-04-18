# windows:SUPPORTED_Windows_10_0_19H1
#
# This policy setting allows you to remove the Meet Now icon from the system control area.
# 
# If you enable this policy setting, the Meet Now icon is not displayed in the system notification area.
# 
# If you disable or do not configure this policy setting, the Meet Now icon is displayed in the system notification area.
Remove the Meet Now icon:
  lgpo.set:
  - name: HideSCAMeetNow
  - setting: Enabled
  - policy_class: User
