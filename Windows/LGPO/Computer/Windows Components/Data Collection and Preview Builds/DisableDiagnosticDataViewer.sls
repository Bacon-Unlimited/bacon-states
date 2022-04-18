# windows:SUPPORTED_Windows_10_0_RS5
#
# 
#           This policy setting controls whether users can enable and launch the Diagnostic Data Viewer from the Diagnostic & Feedback Settings page.
#           If you enable this policy setting, the Diagnostic Data Viewer will not be enabled in Settings page, and it will prevent the viewer from showing diagnostic data collected by Microsoft from the device.  
#           If you disable or don't configure this policy setting, the Diagnostic Data Viewer will be enabled in Settings page.
#       
'Disable diagnostic data viewer. ':
  lgpo.set:
  - name: DisableDiagnosticDataViewer
  - setting: Enabled
  - policy_class: Machine
