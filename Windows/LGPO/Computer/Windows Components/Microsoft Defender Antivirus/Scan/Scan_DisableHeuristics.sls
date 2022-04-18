# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure heuristics. Suspicious detections will be suppressed right before reporting to the engine client. Turning off heuristics will reduce the capability to flag new threats. It is recommended that you do not turn off heuristics.
# 
#     If you enable or do not configure this setting, heuristics will be enabled.
# 
#     If you disable this setting, heuristics will be disabled.
Turn on heuristics:
  lgpo.set:
  - name: Scan_DisableHeuristics
  - setting: Enabled
  - policy_class: Machine
