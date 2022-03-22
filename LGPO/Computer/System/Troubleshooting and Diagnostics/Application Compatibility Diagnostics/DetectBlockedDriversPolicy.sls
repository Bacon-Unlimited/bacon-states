# windows:SUPPORTED_WindowsVista
#
# This setting exists only for backward compatibility, and is not valid for this version of Windows. To configure the Program Compatibility Assistant, use the 'Turn off Program Compatibility Assistant' setting under Computer Configuration\Administrative Templates\Windows Components\Application Compatibility.
Notify blocked drivers:
  lgpo.set:
  - name: DetectBlockedDriversPolicy
  - setting: Enabled
  - policy_class: Machine
