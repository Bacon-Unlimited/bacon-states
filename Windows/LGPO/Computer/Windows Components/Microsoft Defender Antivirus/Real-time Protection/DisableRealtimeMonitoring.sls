# windows:SUPPORTED_WindowsVista
#
# This policy setting turns off real-time protection prompts for known malware detection.
# 
#     Microsoft Defender Antivirus alerts you when malware or potentially unwanted software attempts to install itself or to run on your computer.
# 
#     If you enable this policy setting, Microsoft Defender Antivirus will not prompt users to take actions on malware detections.
# 
#     If you disable or do not configure this policy setting, Microsoft Defender Antivirus will prompt users to take actions on malware detections.
Turn off real-time protection:
  lgpo.set:
  - name: DisableRealtimeMonitoring
  - setting: Enabled
  - policy_class: Machine
