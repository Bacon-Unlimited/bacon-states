# windows:SUPPORTED_WindowsVista
#
# This setting exists only for backward compatibility, and is not valid for this version of Windows. To configure the Program Compatibility Assistant, use the 'Turn off Program Compatibility Assistant' setting under Computer Configuration\Administrative Templates\Windows Components\Application Compatibility.
Turn off Program Compatibility Assistant:
  lgpo.set:
  - name: AppCompatTurnOffProgramCompatibilityAssistant_1
  - setting: Enabled
  - policy_class: User
