# windows:SUPPORTED_Windows_10_0_RS2
#
# This policy setting lets you turn off the Windows Spotlight Windows Welcome experience. This feature helps onboard users to Windows, for instance launching Microsoft Edge with a web page highlighting new features.
# 
# If you enable this policy, the Windows Welcome Experience will no longer display when there are updates and changes to Windows and its apps.
# 
# If you disable or do not configure this policy, the Windows Welcome Experience will be launched to help onboard users to Windows telling them about what's new, changed, and suggested.
Turn off the Windows Welcome Experience:
  lgpo.set:
  - name: DisableWindowsSpotlightWindowsWelcomeExperience
  - setting: Enabled
  - policy_class: User
