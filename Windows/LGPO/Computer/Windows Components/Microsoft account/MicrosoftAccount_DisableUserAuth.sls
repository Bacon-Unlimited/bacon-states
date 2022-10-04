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
# LOCATION: \Computer\Windows Components\Microsoft account\MicrosoftAccount_DisableUserAuth.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_RS2
#
# This setting controls whether users can provide Microsoft accounts for authentication for applications or services. If this setting is enabled, all applications and services on the device are prevented from using Microsoft accounts for authentication.  
# This applies both to existing users of a device and new users who may be added. However, any application or service that has already authenticated a user will not be affected by enabling this setting until the authentication cache expires.  
# It is recommended to enable this setting before any user signs in to a device to prevent cached tokens from being present. If this setting is disabled or not configured, applications and services can use Microsoft accounts for authentication.  
# By default, this setting is Disabled. This setting does not affect whether users can sign in to devices by using Microsoft accounts, or the ability for users to provide Microsoft accounts via the browser for authentication with web-based applications. 
#         
Block all consumer Microsoft account user authentication:
  lgpo.set:
  - name: MicrosoftAccount_DisableUserAuth
  - setting: Enabled
  - policy_class: Machine
