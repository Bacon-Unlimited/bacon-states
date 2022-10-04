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
# LOCATION: \Computer\Windows Components\Windows Logon Options\DefaultLogonDomain.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies a default logon domain, which might be a different domain than the domain to which the computer is joined. Without this policy setting, at logon, if a user does not specify a domain for logon, the domain to which the computer belongs is assumed as the default domain. For example if the computer belongs to the Fabrikam domain, the default domain for user logon is Fabrikam. 
# 
# If you enable this policy setting, the default logon domain is set to the specified domain, which might be different than the domain to which the computer is joined. 
# 
# If you disable or do not configure  this policy setting, the default logon domain is always set to the  domain to which the computer is joined.
Assign a default domain for logon:
  lgpo.set:
  - name: DefaultLogonDomain
  - setting:
      DefaultLogonDomain_Message: text-placeholder
  - policy_class: Machine
