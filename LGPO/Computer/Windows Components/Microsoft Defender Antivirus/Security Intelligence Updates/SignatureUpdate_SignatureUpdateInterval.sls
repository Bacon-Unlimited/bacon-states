# windows:SUPPORTED_Windows8
#
# This policy setting allows you to specify an interval at which to check for security intelligence updates. The time value is represented as the number of hours between update checks. Valid values range from 1 (every hour) to 24 (once per day).
# 
#     If you enable this setting, checks for security intelligence updates will occur at the interval specified.
# 
#     If you disable or do not configure this setting, checks for security intelligence updates will occur at the default interval.
Specify the interval to check for security intelligence updates:
  lgpo.set:
  - name: SignatureUpdate_SignatureUpdateInterval
  - setting:
      SignatureUpdate_SignatureUpdateInterval: decimal-placeholder
  - policy_class: Machine
