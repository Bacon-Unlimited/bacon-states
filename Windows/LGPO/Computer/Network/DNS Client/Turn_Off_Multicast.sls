# windows:SUPPORTED_WindowsVista
#
# Specifies that link local multicast name resolution (LLMNR) is disabled on client computers.
# 
# LLMNR is a secondary name resolution protocol. With LLMNR, queries are sent using multicast over a local network link on a single subnet from a client computer to another client computer on the same subnet that also has LLMNR enabled. LLMNR does not require a DNS server or DNS client configuration, and provides name resolution in scenarios in which conventional DNS name resolution is not possible.
# 
# If you enable this policy setting, LLMNR will be disabled on all available network adapters on the client computer.
# 
# If you disable this policy setting, or you do not configure this policy setting, LLMNR will be enabled on all available network adapters.
Turn off multicast name resolution:
  lgpo.set:
  - name: Turn_Off_Multicast
  - setting: Enabled
  - policy_class: Machine
