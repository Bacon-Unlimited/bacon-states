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
# LOCATION: \Computer\Windows Components\Windows Security\Enterprise Customization\EnterpriseCustomization_EnableCustomizedToasts.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_RS3
#
# 
#         Display specified contact information to local users in Windows Security notifications.
# 
#         Enabled:
#         Your company contact information will be displayed in notifications that come from Windows Security.
# 
#         After setting this to Enabled, you must configure the Specify contact company name GP setting and at least one of the following GP settings:
#         -Specify contact phone number or Skype ID
#         -Specify contact email number or email ID
#         -Specify contact website
#         Please note that in some cases we will be limiting the contact options that are displayed based on the notification space available.
#         
#         Disabled:
#         No contact information will be shown on notifications.
# 
#         Not configured:
#         Same as Disabled.
#     
Configure customized notifications:
  lgpo.set:
  - name: EnterpriseCustomization_EnableCustomizedToasts
  - setting: Enabled
  - policy_class: Machine
