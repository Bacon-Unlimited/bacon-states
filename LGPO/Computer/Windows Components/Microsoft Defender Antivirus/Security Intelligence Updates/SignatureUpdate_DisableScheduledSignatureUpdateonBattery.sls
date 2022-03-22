# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure security intelligence updates when the computer is running on battery power.
# 
#     If you enable or do not configure this setting, security intelligence updates will occur as usual regardless of power state.
# 
#     If you disable this setting, security intelligence updates will be turned off while the computer is running on battery power.
Allow security intelligence updates when running on battery power:
  lgpo.set:
  - name: SignatureUpdate_DisableScheduledSignatureUpdateonBattery
  - setting: Enabled
  - policy_class: Machine
