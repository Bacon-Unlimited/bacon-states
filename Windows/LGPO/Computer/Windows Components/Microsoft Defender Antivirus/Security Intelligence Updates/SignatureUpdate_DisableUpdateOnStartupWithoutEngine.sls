# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure security intelligence updates on startup when there is no antimalware engine present.
# 
#     If you enable or do not configure this setting, security intelligence updates will be initiated on startup when there is no antimalware engine present.
# 
#     If you disable this setting, security intelligence updates will not be initiated on startup when there is no antimalware engine present.
Initiate security intelligence update on startup:
  lgpo.set:
  - name: SignatureUpdate_DisableUpdateOnStartupWithoutEngine
  - setting: Enabled
  - policy_class: Machine
