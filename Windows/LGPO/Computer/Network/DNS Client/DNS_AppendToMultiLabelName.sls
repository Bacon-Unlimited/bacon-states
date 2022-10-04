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
# LOCATION: \Computer\Network\DNS Client\DNS_AppendToMultiLabelName.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# Specifies that computers may attach suffixes to an unqualified multi-label name before sending subsequent DNS queries if the original name query fails.
# 
# A name containing dots, but not dot-terminated, is called an unqualified multi-label name, for example "server.corp" is an unqualified multi-label name. The name "server.corp.contoso.com." is an example of a fully qualified name because it contains a terminating dot.
# 
# For example, if attaching suffixes is allowed, an unqualified multi-label name query for "server.corp" will be queried by the DNS client first. If the query succeeds, the response is returned to the client. If the query fails, the unqualified multi-label name is appended with DNS suffixes. These suffixes can be derived from a combination of the local DNS client's primary domain suffix, a connection-specific domain suffix, and a DNS suffix search list.
# 
# If attaching suffixes is allowed, and a DNS client with a primary domain suffix of "contoso.com" performs a query for "server.corp" the DNS client will send a query for "server.corp" first, and then a query for "server.corp.contoso.com." second if the first query fails.
# 
# If you enable this policy setting, suffixes are allowed to be appended to an unqualified multi-label name if the original name query fails.
# 
# If you disable this policy setting, no suffixes are appended to unqualified multi-label name queries if the original name query fails.
# 
# If you do not configure this policy setting, computers will use their local DNS client settings to determine the query behavior for unqualified multi-label names.
Allow DNS suffix appending to unqualified multi-label name queries:
  lgpo.set:
  - name: DNS_AppendToMultiLabelName
  - setting: Enabled
  - policy_class: Machine
