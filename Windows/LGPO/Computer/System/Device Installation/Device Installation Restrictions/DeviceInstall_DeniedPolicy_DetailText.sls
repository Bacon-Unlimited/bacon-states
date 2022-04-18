# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to display a custom message to users in a notification when a device installation is attempted and a policy setting prevents the installation.
# 
# If you enable this policy setting, Windows displays the text you type in the Detail Text box when a policy setting prevents device installation.
# 
# If you disable or do not configure this policy setting, Windows displays a default message when a policy setting prevents device installation.
Display a custom message when installation is prevented by a policy setting:
  lgpo.set:
  - name: DeviceInstall_DeniedPolicy_DetailText
  - setting:
      DeviceInstall_DeniedPolicy_DetailText_Text: text-placeholder
  - policy_class: Machine
