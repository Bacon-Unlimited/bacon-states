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
# LOCATION: \Computer\System\Kerberos\ForestSearch.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting defines the list of trusting forests that the Kerberos client searches when attempting to resolve two-part service principal names (SPNs).
# 
# If you enable this policy setting, the Kerberos client searches the forests in this list, if it is unable to resolve a two-part SPN. If a match is found, the Kerberos client requests a referral ticket to the appropriate domain.
# 
# If you disable or do not configure this policy setting, the Kerberos client does not search the listed forests to resolve the SPN. If the Kerberos client is unable to resolve the SPN because the name is not found, NTLM authentication might be used.
Use forest search order:
  lgpo.set:
  - name: ForestSearch
  - setting:
      ForestSearchList: text-placeholder
  - policy_class: Machine
