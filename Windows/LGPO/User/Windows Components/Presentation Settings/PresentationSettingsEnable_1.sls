# windows:SUPPORTED_WindowsVista
#
# This policy setting turns off Windows presentation settings.
# 
# If you enable this policy setting, Windows presentation settings cannot be invoked.
# 
# If you disable this policy setting, Windows presentation settings can be invoked. The presentation settings icon will be displayed in the notification area. This will give users a quick and easy way to configure their system settings before a presentation to block system notifications and screen blanking, adjust speaker volume, and apply a custom background image.
# 
# Note: Users will be able to customize their system settings for presentations in Windows Mobility Center.
# 
# If you do not configure this policy setting, Windows presentation settings can be invoked.
Turn off Windows presentation settings:
  lgpo.set:
  - name: PresentationSettingsEnable_1
  - setting: Enabled
  - policy_class: User
