####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \Computer\Windows Components\Data Collection and Preview Builds\ConfigureMicrosoft365UploadEndpoint.sls
#
# SUPPORTED WINDOWS OS
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
