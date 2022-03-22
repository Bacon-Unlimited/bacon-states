# windows:SUPPORTED_Windows_10_0_RS2
#
# If you enable this policy, Windows Spotlight notifications will no longer be shown on Action Center.
# 
# If you disable or do not configure this policy, Microsoft may display notifications in Action Center that will suggest apps or features to help users be more productive on Windows.
Turn off Windows Spotlight on Action Center:
  lgpo.set:
  - name: DisableWindowsSpotlightOnActionCenter
  - setting: Enabled
  - policy_class: User
