# WU_SUPPORTED_Win2kSP3_Or_XPSP1_NoWinRT
#
# Specifies the hours that Windows will use to determine how long to wait before checking for available updates. The exact wait time is a sum of the specific value and a random variant of 0-4 hours.
# 
#         If the status is set to Enabled, Windows will check for available updates at the specified interval.
# 
#         If the status is set to Disabled or Not Configured, Windows will check for available updates at the default interval of 22 hours.
# 
#         Note: The "Specify intranet Microsoft update service location" setting must be enabled for this policy to have effect.
# 
#         Note: If the "Configure Automatic Updates" policy is disabled, this policy has no effect.
# 
#         Note: This policy is not supported on Windows RT. Setting this policy will not have any effect on Windows RT PCs.
Automatic Updates detection frequency:
  lgpo.set:
  - name: DetectionFrequency_Title
  - setting:
      DetectionFrequency_Hour2: decimal-placeholder
  - policy_class: Machine
