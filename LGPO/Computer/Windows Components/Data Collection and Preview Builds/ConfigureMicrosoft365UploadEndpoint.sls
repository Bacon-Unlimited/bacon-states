# windows:SUPPORTED_Windows_10_0_RS5
#
# 
#           This policy sets the upload endpoint for this devices diagnostic data as part of the Desktop Analytics program.
#           If your organization is participating in the program and has been instructed to configure a custom upload endpoint, then use this setting to define that endpoint.
#           The value for this setting will be provided by Microsoft as part of the onboarding process for the program. 
#       
Configure diagnostic data upload endpoint for Desktop Analytics:
  lgpo.set:
  - name: ConfigureMicrosoft365UploadEndpoint
  - setting:
      ConfigureMicrosoft365UploadEndpointValue: text-placeholder
  - policy_class: Machine
