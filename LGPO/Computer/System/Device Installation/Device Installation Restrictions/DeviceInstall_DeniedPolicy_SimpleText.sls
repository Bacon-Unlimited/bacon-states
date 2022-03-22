# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to display a custom message title in a notification when a device installation is attempted and a policy setting prevents the installation.
# 
# If you enable this policy setting, Windows displays the text you type in the Main Text box as the title text of a notification when a policy setting prevents device installation.
# 
# If you disable or do not configure this policy setting, Windows displays a default title in a notification when a policy setting prevents device installation.
Display a custom message title when device installation is prevented by a policy setting:
  lgpo.set:
  - name: DeviceInstall_DeniedPolicy_SimpleText
  - setting:
      DeviceInstall_DeniedPolicy_SimpleText_Text: text-placeholder
  - policy_class: Machine
