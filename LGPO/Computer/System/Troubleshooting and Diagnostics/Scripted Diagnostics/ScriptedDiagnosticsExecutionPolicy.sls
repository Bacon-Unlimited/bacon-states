# windows:SUPPORTED_Windows7
#
# This policy setting allows users to access and run the troubleshooting tools that are available in the Troubleshooting Control Panel and to run the troubleshooting wizard to troubleshoot problems on their computers.
# 
# If you enable or do not configure this policy setting, users can access and run the troubleshooting tools from the Troubleshooting Control Panel.
# 
# If you disable this policy setting, users cannot access or run the troubleshooting tools from the Control Panel.
# 
# Note that this setting also controls a user's ability to launch standalone troubleshooting packs such as those found in .diagcab files.
#     
'Troubleshooting: Allow users to access and run Troubleshooting Wizards':
  lgpo.set:
  - name: ScriptedDiagnosticsExecutionPolicy
  - setting: Enabled
  - policy_class: Machine
