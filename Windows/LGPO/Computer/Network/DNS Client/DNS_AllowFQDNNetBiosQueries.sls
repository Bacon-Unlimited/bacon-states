# windows:SUPPORTED_Windows8
#
# Specifies that NetBIOS over TCP/IP (NetBT) queries are issued for fully qualified domain names. 
# 
# If you enable this policy setting, NetBT queries will be issued for multi-label and fully qualified domain names such as "www.example.com" in addition to single-label names.  
# 
# If you disable this policy setting, or if you do not configure this policy setting, NetBT queries will only be issued for single-label names such as "example" and not for multi-label and fully qualified domain names.
Allow NetBT queries for fully qualified domain names:
  lgpo.set:
  - name: DNS_AllowFQDNNetBiosQueries
  - setting: Enabled
  - policy_class: Machine
