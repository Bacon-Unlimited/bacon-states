# windows:SUPPORTED_Windows_10_0_UP_TO_RS2
#
# This policy setting determines whether users can get preview builds of Windows, by configuring controls in Settings > Update and security > Windows Insider Program.
# 
# If you enable or do not configure this policy setting, users can download and install preview builds of Windows by configuring Windows Insider Program settings.
# 
# If you disable this policy setting, Windows Insider Program settings will be unavailable to users through the Settings app.
# 
# This policy is only supported up to Windows 10, Version 1703. Please use 'Manage preview builds' under 'Windows Update for Business' for newer Windows 10 versions.
Toggle user control over Insider builds:
  lgpo.set:
  - name: AllowBuildPreview
  - setting: Enabled
  - policy_class: Machine
