# windows:SUPPORTED_Windows7ToVistaAndWindows10
#
# This policy setting allows you to configure Window Scaling Heuristics. Window Scaling Heuristics is an algorithm to identify connectivity and throughput problems caused by many Firewalls and other middle boxes that don't interpret Window Scaling option correctly.
# 
# If you do not configure this policy setting, the local host settings are used.
# 
# If you enable this policy setting, Window Scaling Heuristics will be enabled and system will try to identify connectivity and throughput problems and take appropriate measures.
# 
# If you disable this policy setting, Window Scaling Heuristics will be disabled and system will not try to identify connectivity and throughput problems casued by Firewalls or other middle boxes.
# 
# 
Set Window Scaling Heuristics State:
  lgpo.set:
  - name: Windows_Scaling_Heuristics_State
  - setting: Enabled
  - policy_class: Machine
