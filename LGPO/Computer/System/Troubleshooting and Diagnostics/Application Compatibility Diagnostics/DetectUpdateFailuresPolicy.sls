# windows:SUPPORTED_WindowsVista
#
# This setting exists only for backward compatibility, and is not valid for this version of Windows. To configure the Program Compatibility Assistant, use the 'Turn off Program Compatibility Assistant' setting under Computer Configuration\Administrative Templates\Windows Components\Application Compatibility.
Detect applications unable to launch installers under UAC:
  lgpo.set:
  - name: DetectUpdateFailuresPolicy
  - setting:
      DetectUpdateFailuresLevel: enum-placeholder
  - policy_class: Machine
