# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure protocol recognition for network protection against exploits of known vulnerabilities.
# 
#     If you enable or do not configure this setting, protocol recognition will be enabled.
# 
#     If you disable this setting, protocol recognition will be disabled.
Turn on protocol recognition:
  lgpo.set:
  - name: Nis_DisableProtocolRecognition
  - setting: Enabled
  - policy_class: Machine
