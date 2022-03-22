# windows:SUPPORTED_Windows8
#
# This policy setting enables system administrators to change the graphics rendering for all Remote Desktop Services sessions.
# 
# If you enable this policy setting, all Remote Desktop Services sessions use the hardware graphics renderer instead of the Microsoft Basic Render Driver as the default adapter.
# 
# If you disable this policy setting, all Remote Desktop Services sessions use the Microsoft Basic Render Driver as the default adapter.
# 
# If you do not configure this policy setting, Remote Desktop Services sessions on the RD Session Host server use the Microsoft Basic Render Driver as the default adapter. In all other cases, Remote Desktop Services sessions use the hardware graphics renderer by default.
# 
# NOTE: The policy setting enables load-balancing of graphics processing units (GPU) on a computer with more than one GPU installed. The GPU configuration of the local session is not affected by this policy setting.
# 
Use hardware graphics adapters for all Remote Desktop Services sessions:
  lgpo.set:
  - name: TS_DX_USE_FULL_HWGPU
  - setting: Enabled
  - policy_class: Machine
