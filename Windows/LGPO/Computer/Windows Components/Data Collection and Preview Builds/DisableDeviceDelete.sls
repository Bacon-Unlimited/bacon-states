# windows:SUPPORTED_Windows_10_0_RS5
#
# 
#           This policy setting controls whether the Delete diagnostic data button is enabled in Diagnostic & Feedback Settings page.
#           If you enable this policy setting, the Delete diagnostic data button will be disabled in Settings page, preventing the deletion of diagnostic data collected by Microsoft from the device. 
#           If you disable or don't configure this policy setting, the Delete diagnostic data button will be enabled in Settings page, which allows people to erase all diagnostic data collected by Microsoft from that device.
#       
'Disable deleting diagnostic data ':
  lgpo.set:
  - name: DisableDeviceDelete
  - setting: Enabled
  - policy_class: Machine
