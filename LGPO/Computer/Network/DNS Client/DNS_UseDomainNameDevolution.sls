# windows:SUPPORTED_WindowsXP
#
# Specifies if the DNS client performs primary DNS suffix devolution during the name resolution process.
# 
# With devolution, a DNS client creates queries by appending a single-label, unqualified domain name with the parent suffix of the primary DNS suffix name, and the parent of that suffix, and so on, stopping if the name is successfully resolved or at a level determined by devolution settings. Devolution can be used when a user or application submits a query for a single-label domain name.
# 
# The DNS client appends DNS suffixes to the single-label, unqualified domain name based on the state of the Append primary and connection specific DNS suffixes radio button and Append parent suffixes of the primary DNS suffix check box on the DNS tab in Advanced TCP/IP Settings for the Internet Protocol (TCP/IP) Properties dialog box.
# 
# Devolution is not enabled if a global suffix search list is configured using Group Policy.
# 
# If a global suffix search list is not configured, and the Append primary and connection specific DNS suffixes radio button is selected, the DNS client appends the following names to a single-label name when it sends DNS queries:
# 
# The primary DNS suffix, as specified on the Computer Name tab of the System control panel.
# 
# Each connection-specific DNS suffix, assigned either through DHCP or specified in the DNS suffix for this connection box on the DNS tab in the Advanced TCP/IP Settings dialog box for each connection.
# 
# For example, when a user submits a query for a single-label name such as "example," the DNS client attaches a suffix such as "microsoft.com" resulting in the query "example.microsoft.com," before sending the query to a DNS server.
# 
# If a DNS suffix search list is not specified, the DNS client attaches the primary DNS suffix to a single-label name. If this query fails, the connection-specific DNS suffix is attached for a new query. If none of these queries are resolved, the client devolves the primary DNS suffix of the computer (drops the leftmost label of the primary DNS suffix), attaches this devolved primary DNS suffix to the single-label name, and submits this new query to a DNS server.
# 
# For example, if the primary DNS suffix ooo.aaa.microsoft.com is attached to the non-dot-terminated single-label name "example," and the DNS query for example.ooo.aaa.microsoft.com fails, the DNS client devolves the primary DNS suffix (drops the leftmost label) till the specified devolution level, and submits a query for example.aaa.microsoft.com. If this query fails, the primary DNS suffix is devolved further if it is under specified devolution level and the query example.microsoft.com is submitted. If this query fails, devolution continues if it is under specified devolution level and the query example.microsoft.com is submitted, corresponding to a devolution level of two. The primary DNS suffix cannot be devolved beyond a devolution level of two. The devolution level can be configured using the primary DNS suffix devolution level policy setting. The default devolution level is two.
# 
# If you enable this policy setting, or if you do not configure this policy setting, DNS clients attempt to resolve single-label names using concatenations of the single-label name to be resolved and the devolved primary DNS suffix.
# 
# If you disable this policy setting, DNS clients do not attempt to resolve names that are concatenations of the single-label name to be resolved and the devolved primary DNS suffix.
Primary DNS suffix devolution:
  lgpo.set:
  - name: DNS_UseDomainNameDevolution
  - setting: Enabled
  - policy_class: Machine
