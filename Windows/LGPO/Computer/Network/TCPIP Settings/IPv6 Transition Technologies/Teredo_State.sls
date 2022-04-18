# windows:SUPPORTED_Windows7
#
# This policy setting allows you to configure Teredo, an address assignment and automatic tunneling technology that provides unicast IPv6 connectivity across the IPv4 Internet.
# 
# If you disable or do not configure this policy setting, the local host settings are used.
# 
# If you enable this policy setting, you can configure Teredo with one of the following settings:
# 
# Default: The default state is "Client."
# 
# Disabled: No Teredo interfaces are present on the host.
# 
# Client: The Teredo interface is present only when the host is not on a network that includes a domain controller.
# 
# Enterprise Client: The Teredo interface is always present, even if the host is on a network that includes a domain controller.
# 
# 
Set Teredo State:
  lgpo.set:
  - name: Teredo_State
  - setting:
      StateSelect: enum-placeholder
  - policy_class: Machine
