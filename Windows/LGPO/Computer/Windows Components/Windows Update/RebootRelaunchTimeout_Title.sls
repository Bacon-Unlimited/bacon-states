# WU_SUPPORTED_Windows7_To_Win2kSP3_Or_XPSP1
#
# 
#         Specifies the amount of time for Automatic Updates to wait before prompting again with a scheduled restart.
# 
#         If the status is set to Enabled, a scheduled restart will occur the specified number of minutes after the previous prompt for restart was postponed.
# 
#         If the status is set to Disabled or Not Configured, the default interval is 10 minutes.
# 
#         Note: This policy applies only when Automatic Updates is configured to perform scheduled installations of updates. If the "Configure Automatic Updates" policy is disabled, this policy has no effect. This policy has no effect on Windows RT
Re-prompt for restart with scheduled installations:
  lgpo.set:
  - name: RebootRelaunchTimeout_Title
  - setting:
      RebootRelaunchTimeout_Minutes3: decimal-placeholder
  - policy_class: Machine
