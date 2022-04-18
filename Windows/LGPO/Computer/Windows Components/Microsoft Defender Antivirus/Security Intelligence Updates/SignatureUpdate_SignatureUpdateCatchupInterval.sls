# windows:SUPPORTED_Windows8
#
# This policy setting allows you to define the number of days after which a catch-up security intelligence update will be required. By default, the value of this setting is 1 day.
# 
#     If you enable this setting, a catch-up security intelligence update will occur after the specified number of days.
# 
#     If you disable or do not configure this setting, a catch-up security intelligence update will be required after the default number of days.
Define the number of days after which a catch-up security intelligence update is required:
  lgpo.set:
  - name: SignatureUpdate_SignatureUpdateCatchupInterval
  - setting:
      SignatureUpdate_SignatureUpdateCatchupInterval: decimal-placeholder
  - policy_class: Machine
