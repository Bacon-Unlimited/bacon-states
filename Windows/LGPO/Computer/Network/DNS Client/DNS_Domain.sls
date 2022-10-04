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
# LOCATION: \Computer\Network\DNS Client\DNS_Domain.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPOnly
#
# Specifies a connection-specific DNS suffix. This policy setting supersedes local connection-specific DNS suffixes, and those configured using DHCP.
# 
# To use this policy setting, click Enabled, and then enter a string value representing the DNS suffix.
# 
# If you enable this policy setting, the DNS suffix that you enter will be applied to all network connections used by computers that receive this policy setting.
# 
# If you disable this policy setting, or if you do not configure this policy setting, computers will use the local or DHCP supplied connection specific DNS suffix, if configured.
Connection-specific DNS suffix:
  lgpo.set:
  - name: DNS_Domain
  - setting:
      DNS_DomainLabel: text-placeholder
  - policy_class: Machine
