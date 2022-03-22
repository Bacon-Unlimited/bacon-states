# windows:SUPPORTED_WindowsXP
#
# Specifies if DNS dynamic update is enabled. Computers configured for DNS dynamic update automatically register and update their DNS resource records with a DNS server.
# 
# If you enable this policy setting, or you do not configure this policy setting, computers will attempt to use dynamic DNS registration on all network connections that have connection-specific dynamic DNS registration enabled. For a dynamic DNS registration to be enabled on a network connection, the connection-specific configuration must allow dynamic DNS registration, and this policy setting must not be disabled.
# 
# If you disable this policy setting, computers may not use dynamic DNS registration for any of their network connections, regardless of the configuration for individual network connections.
Dynamic update:
  lgpo.set:
  - name: DNS_RegistrationEnabled
  - setting: Enabled
  - policy_class: Machine
