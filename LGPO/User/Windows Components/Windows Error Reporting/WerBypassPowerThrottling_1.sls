# windows:SUPPORTED_Windows8
#
# This policy setting determines whether Windows Error Reporting (WER) checks if the computer is running on battery power. By default, when a computer is running on battery power, WER only checks for solutions, but does not upload additional report data until the computer is connected to a more permanent power source.
# 
# If you enable this policy setting, WER does not determine whether the computer is running on battery power, but checks for solutions and uploads report data normally.
# 
# If you disable or do not configure this policy setting, WER checks for solutions while a computer is running on battery power, but does not upload report data until the computer is connected to a more permanent power source.
Send additional data when on battery power:
  lgpo.set:
  - name: WerBypassPowerThrottling_1
  - setting: Enabled
  - policy_class: User
