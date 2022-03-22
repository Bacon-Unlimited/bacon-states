# WU_SUPPORTED_Win2kSP3_Or_XPSP1_NoWinRT
#
# Specifies the target group name or names that should be used to receive updates from an intranet Microsoft update service.
# 
# If the status is set to Enabled, the specified target group information is sent to the intranet Microsoft update service which uses it to determine which updates should be deployed to this computer.
# 
# If the intranet Microsoft update service supports multiple target groups this policy can specify multiple group names separated by semicolons. Otherwise, a single group must be specified.
# 
# If the status is set to Disabled or Not Configured, no target group information will be sent to the intranet Microsoft update service.
# 
# Note: This policy applies only when the intranet Microsoft update service this computer is directed to is configured to support client-side targeting. If the "Specify intranet Microsoft update service location" policy is disabled or not configured, this policy has no effect.
# Note: This policy is not supported on Windows RT. Setting this policy will not have any effect on Windows RT PCs.
Enable client-side targeting:
  lgpo.set:
  - name: TargetGroup_Title
  - setting:
      TargetGroup_Name: text-placeholder
  - policy_class: Machine
