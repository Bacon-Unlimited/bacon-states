# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure the automatic scan which starts after a security intelligence update has occurred.
# 
#     If you enable or do not configure this setting, a scan will start following a security intelligence update.
# 
#     If you disable this setting, a scan will not start following a security intelligence update.
Turn on scan after security intelligence update:
  lgpo.set:
  - name: SignatureUpdate_DisableScanOnUpdate
  - setting: Enabled
  - policy_class: Machine
