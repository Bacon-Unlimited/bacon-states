# WU_SUPPORTED_Windows7_To_Win2kSP3_Or_XPSP1
#
# Specifies the amount of time for Automatic Updates to wait before proceeding with a scheduled restart.
# 
# If the status is set to Enabled, a scheduled restart will occur the specified number of minutes after the installation is finished.
# 
# If the status is set to Disabled or Not Configured, the default wait time is 15 minutes.
# 
# Note: This policy applies only when Automatic Updates is configured to perform scheduled installations of updates. If the "Configure Automatic Updates" policy is disabled, this policy has no effect.
Delay Restart for scheduled installations:
  lgpo.set:
  - name: RebootWarningTimeout_Title
  - setting:
      RebootWarningTimeout_Minutes3: decimal-placeholder
  - policy_class: Machine
