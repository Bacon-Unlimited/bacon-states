# WU_SUPPORTED_WindowsXPSP1_NoWinRT
#
# This policy setting allows you to manage whether Automatic Updates accepts updates signed by entities other than Microsoft when the update is found on an intranet Microsoft update service location.
# 
# If you enable this policy setting, Automatic Updates accepts updates received through an intranet Microsoft update service location, if they are signed by a certificate found in the "Trusted Publishers" certificate store of the local computer.
# 
# If you disable or do not configure this policy setting, updates from an intranet Microsoft update service location must be signed by Microsoft.
# 
# Note: Updates from a service other than an intranet Microsoft update service must always be signed by Microsoft and are not affected by this policy setting.
# Note: This policy is not supported on Windows RT. Setting this policy will not have any effect on Windows RT PCs.
'Allow signed updates from an intranet Microsoft update service location ':
  lgpo.set:
  - name: TrustedPublisher_Title
  - setting: Enabled
  - policy_class: Machine
