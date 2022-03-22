# windows:SUPPORTED_Windows_10_0
#
# This policy setting specifies whether the Remote Desktop Connection can use hardware acceleration if supported hardware is available. If you use this setting, the Remote Desktop Client will use only software decoding. For example, if you have a problem that you suspect may be related to hardware acceleration, use this setting to disable the acceleration; then, if the problem still occurs, you will know that there are additional issues to investigate. If you disable this setting or leave it not configured, the Remote Desktop client will use hardware accelerated decoding if supported hardware is available.
#     
Do not allow hardware accelerated decoding:
  lgpo.set:
  - name: TS_CLIENT_DISABLE_HARDWARE_MODE
  - setting: Enabled
  - policy_class: Machine
