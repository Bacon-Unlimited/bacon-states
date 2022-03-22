# windows:SUPPORTED_Windows8
#
# This policy setting allows you to turn off saving the auto-tuning result to file.
# 
# If you enable this policy setting, the auto-tuning data is not saved to file.
# 
# If you disable or do not configure this policy setting, auto-tuning data is saved to file by default.
# 
# This policy setting applies to Japanese Microsoft IME only.
Turn off saving auto-tuning data to file:
  lgpo.set:
  - name: L_TurnOffSavingAutoTuningDataToFile
  - setting: Enabled
  - policy_class: User
