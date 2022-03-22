# windows:SUPPORTED_WindowsVista
#
# This setting exists only for backward compatibility, and is not valid for this version of Windows. To configure the Program Compatibility Assistant, use the 'Turn off Program Compatibility Assistant' setting under Computer Configuration\Administrative Templates\Windows Components\Application Compatibility.
Detect application installers that need to be run as administrator:
  lgpo.set:
  - name: DetectUndetectedInstallersPolicy
  - setting:
      DetectUndetectedInstallersLevel: enum-placeholder
  - policy_class: Machine
