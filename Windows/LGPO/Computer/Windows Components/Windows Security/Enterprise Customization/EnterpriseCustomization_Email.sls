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
# LOCATION: \Computer\Windows Components\Windows Security\Enterprise Customization\EnterpriseCustomization_Email.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_RS3
#
# 
#         Specify the email address or email ID that will be displayed in Windows Security and associated notifications. 
# 
#         Users can click on the contact information to create an email that will be sent to the specified address. The default email application will be used. 
# 
#         Enabled:
#         Enter the email address or email ID in the Options section.
# 
#         Disabled:
#         A contact email address or email ID will not be shown in either Windows Security or any notifications it creates.
# 
#         Not configured:
#         Same as Disabled.
#     
Specify contact email address or Email ID:
  lgpo.set:
  - name: EnterpriseCustomization_Email
  - setting:
      Presentation_EnterpriseCustomization_Email: text-placeholder
  - policy_class: Machine
