# windows:SUPPORTED_Windows8
#
# This policy setting allows you to enable download of security intelligence updates from Microsoft Update even if the Automatic Updates default server is configured to another download source such as Windows Update.
# 
#     If you enable this setting, security intelligence updates will be downloaded from Microsoft Update.
# 
#     If you disable or do not configure this setting, security intelligence updates will be downloaded from the configured download source.
Allow security intelligence updates from Microsoft Update:
  lgpo.set:
  - name: SignatureUpdate_ForceUpdateFromMU
  - setting: Enabled
  - policy_class: Machine
