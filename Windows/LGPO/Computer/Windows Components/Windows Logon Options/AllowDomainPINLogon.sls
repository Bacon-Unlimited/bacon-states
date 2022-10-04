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
# LOCATION: \Computer\Windows Components\Windows Logon Options\AllowDomainPINLogon.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows you to control whether a domain user can sign in using a convenience PIN.
# 
# If you enable this policy setting, a domain user can set up and sign in with a convenience PIN.
# 
# If you disable or don't configure this policy setting, a domain user can't set up and use a convenience PIN.
# 
# Note: The user's domain password will be cached in the system vault when using this feature.
# 
# To configure Windows Hello for Business, use the Administrative Template policies under Windows Hello for Business.
Turn on convenience PIN sign-in:
  lgpo.set:
  - name: AllowDomainPINLogon
  - setting: Enabled
  - policy_class: Machine
