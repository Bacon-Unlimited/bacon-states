# windows:SUPPORTED_Windows_10_0_RS4
#
# If you enable this policy, Windows Spotlight suggestions will no longer be shown in Settings app.
# 
# If you disable or do not configure this policy, Microsoft may suggest apps or features in Settings app to help users be productive on Windows or their linked phone.
Turn off Windows Spotlight on Settings:
  lgpo.set:
  - name: DisableWindowsSpotlightOnSettings
  - setting: Enabled
  - policy_class: User
