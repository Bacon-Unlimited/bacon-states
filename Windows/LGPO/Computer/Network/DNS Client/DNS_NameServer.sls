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
# LOCATION: \Computer\Network\DNS Client\DNS_NameServer.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPOnly
#
# Defines the DNS servers to which a computer sends queries when it attempts to resolve names. This policy setting supersedes the list of DNS servers configured locally and those configured using DHCP. 
# 
# To use this policy setting, click Enabled, and then enter a space-delimited list of IP addresses in the available field. To use this policy setting, you must enter at least one IP address.
# 
# If you enable this policy setting, the list of DNS servers is applied to all network connections used by computers that receive this policy setting. 
# 
# If you disable this policy setting, or if you do not configure this policy setting, computers will use the local or DHCP supplied list of DNS servers, if configured.
DNS servers:
  lgpo.set:
  - name: DNS_NameServer
  - setting:
      DNS_NameServerLabel: text-placeholder
  - policy_class: Machine
