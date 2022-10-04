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
# LOCATION: \Computer\System\Net Logon\DC Locator DNS Records\Netlogon_AllowSingleLabelDnsDomain.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting specifies whether the computers to which this setting is applied attempt DNS name resolution of a single-label domain names.
# 
# By default, the behavior specified in the AllowDnsSuffixSearch is used. If the AllowDnsSuffixSearch policy is disabled, then NetBIOS name resolution is used exclusively, to locate a domain controller hosting an Active Directory domain specified with a single-label name.
# 
# If you enable this policy setting, computers to which this policy is applied will attempt to locate a domain controller hosting an Active Directory domain specified with a single-label name using DNS name resolution.
# 
# If you disable this policy setting, computers to which this setting is applied will use the AllowDnsSuffixSearch policy, if it is not disabled or perform NetBIOS name resolution otherwise, to attempt to locate a domain controller that hosts an Active Directory domain specified with a single-label name. the computers will not the DNS name resolution in this case, unless the computer is searching for a domain with a single label DNS name that exists in the Active Directory forest to which this computer is joined.
# 
# If you do not configure this policy setting, it is not applied to any computers, and computers use their local configuration.
Use DNS name resolution with a single-label domain name instead of NetBIOS name resolution to locate the DC:
  lgpo.set:
  - name: Netlogon_AllowSingleLabelDnsDomain
  - setting: Enabled
  - policy_class: Machine
