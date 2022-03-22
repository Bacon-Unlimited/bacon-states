# windows:SUPPORTED_Windows8
#
# If you enable this setting, users will not be allowed to switch between recent apps. The App Switching option in the PC settings app will be disabled as well.
# 
# If you disable or do not configure this policy setting, users will be allowed to switch between recent apps.
Turn off switching between recent apps:
  lgpo.set:
  - name: TurnOffBackstack
  - setting: Enabled
  - policy_class: User
