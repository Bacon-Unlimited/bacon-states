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
# LOCATION: \Computer\Network\DNS Client\DNS_SearchList.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# Specifies the DNS suffixes to attach to an unqualified single-label name before submission of a DNS query for that name.
# 
# An unqualified single-label name contains no dots. The name "example" is a single-label name. This is different from a fully qualified domain name such as "example.microsoft.com."
# 
# Client computers that receive this policy setting will attach one or more suffixes to DNS queries for a single-label name. For example, a DNS query for the single-label name "example" will be modified to "example.microsoft.com" before sending the query to a DNS server if this policy setting is enabled with a suffix of "microsoft.com."
# 
# To use this policy setting, click Enabled, and then enter a string value representing the DNS suffixes that should be appended to single-label names. You must specify at least one suffix. Use a comma-delimited string, such as "microsoft.com,serverua.microsoft.com,office.microsoft.com" to specify multiple suffixes.
# 
# If you enable this policy setting, one DNS suffix is attached at a time for each query. If a query is unsuccessful, a new DNS suffix is added in place of the failed suffix, and this new query is submitted. The values are used in the order they appear in the string, starting with the leftmost value and proceeding to the right until a query is successful or all suffixes are tried.
# 
# If you disable this policy setting, or if you do not configure this policy setting, the primary DNS suffix and network connection-specific DNS suffixes are appended to the unqualified queries.
DNS suffix search list:
  lgpo.set:
  - name: DNS_SearchList
  - setting:
      DNS_SearchListLabel: text-placeholder
  - policy_class: Machine
