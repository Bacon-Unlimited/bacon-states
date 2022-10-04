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
# LOCATION: \Computer\Windows Components\Windows Security\Enterprise Customization\EnterpriseCustomization_CompanyName.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_RS3
#
# 
#         Specify the company name that will be displayed in Windows Security and associated notifications. This setting must be enabled for any contact information to appear.
# 
#         Enabled:
#         Enter the company name in the Options section.
# 
#         Disabled:
#         Company information will not be shown at all in either Windows Security or any notifications that it creates.
# 
#         Not configured:
#         Same as Disabled.
#     
Specify contact company name:
  lgpo.set:
  - name: EnterpriseCustomization_CompanyName
  - setting:
      Presentation_EnterpriseCustomization_CompanyName: text-placeholder
  - policy_class: Machine
