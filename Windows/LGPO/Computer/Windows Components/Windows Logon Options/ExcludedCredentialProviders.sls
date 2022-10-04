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
# LOCATION: \Computer\Windows Components\Windows Logon Options\ExcludedCredentialProviders.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting allows the administrator to exclude the specified
# credential providers from use during authentication.
# 
# Note: credential providers are used to process and validate user
# credentials during logon or when authentication is required.
# Windows Vista provides two default credential providers:
# Password and Smart Card. An administrator can install additional
# credential providers for different sets of credentials
# (for example, to support biometric authentication).
# 
# If you enable this policy, an administrator can specify the CLSIDs
# of the credential providers to exclude from the set of installed
# credential providers available for authentication purposes.
# 
# If you disable or do not configure this policy, all installed and otherwise enabled credential providers are available for authentication purposes.
Exclude credential providers:
  lgpo.set:
  - name: ExcludedCredentialProviders
  - setting:
      ExcludedCredentialProviders_Message: text-placeholder
  - policy_class: Machine
