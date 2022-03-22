# windows:SUPPORTED_Windows8
#
# This policy setting allows you to turn on logging of misconversion for the misconversion report.
# 
# If you enable this policy setting, misconversion logging is turned on.
# 
# If you disable or do not configure this policy setting, misconversion logging is turned off.
# 
# This policy setting applies to Japanese Microsoft IME and Traditional Chinese IME.
Turn on misconversion logging for misconversion report:
  lgpo.set:
  - name: L_TurnOnMisconversionLoggingForMisconversionReport
  - setting: Enabled
  - policy_class: User
