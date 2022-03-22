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
