# windows:SUPPORTED_Windows_10_0
#
# This policy setting defines the identifier used to uniquely associate this device’s telemetry data as belonging to a given organization. If your organization is participating in a program that requires this device to be identified as belonging to your organization then use this setting to provide that identification. The value for this setting will be provided by Microsoft as part of the onboarding process for the program. 
# 
# If you disable or do not configure this policy setting, then Microsoft will not be able to use this identifier to associate this machine and its telemetry data with your organization.
#       
Configure the Commercial ID:
  lgpo.set:
  - name: CommercialIdPolicy
  - setting:
      CommercialIdValue: text-placeholder
  - policy_class: Machine
