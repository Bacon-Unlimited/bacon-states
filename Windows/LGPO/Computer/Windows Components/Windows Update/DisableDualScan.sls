# windows:SUPPORTED_Windows_10_0_RS1
#
# Enable this policy to not allow update deferral policies to cause scans against Windows Update.
# 
# If this policy is disabled or not configured, then the Windows Update client may initiate automatic scans against Windows Update while update deferral policies are enabled.
# Note: This policy applies only when the intranet Microsoft update service this computer is directed to is configured to support client-side targeting. If the "Specify intranet Microsoft update service location" policy is disabled or not configured, this policy has no effect.
#       
Do not allow update deferral policies to cause scans against Windows Update:
  lgpo.set:
  - name: DisableDualScan
  - setting: Enabled
  - policy_class: Machine
