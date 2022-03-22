# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to manage whether the Windows Remote Management (WinRM) service automatically listens on the network for requests on the HTTP transport over the default HTTP port.
# 
# If you enable this policy setting, the WinRM service automatically listens on the network for requests on the HTTP transport over the default HTTP port.
# 
# To allow WinRM service to receive requests over the network, configure the Windows Firewall policy setting with exceptions for Port 5985 (default port for HTTP).
# 
# If you disable or do not configure this policy setting, the WinRM service will not respond to requests from a remote computer, regardless of whether or not any WinRM listeners are configured.
# 
# The service listens on the addresses specified by the IPv4 and IPv6 filters. The IPv4 filter specifies one or more ranges of IPv4 addresses, and the IPv6 filter specifies one or more ranges of IPv6addresses. If specified, the service enumerates the available IP addresses on the computer and uses only addresses that fall within one of the filter ranges.
# 
# You should use an asterisk (*) to indicate that the service listens on all available IP addresses on the computer. When * is used, other ranges in the filter are ignored. If the filter is left blank, the service does not listen on any addresses.
# 
# For example, if you want the service to listen only on IPv4 addresses, leave the IPv6 filter empty.
# 
# Ranges are specified using the syntax IP1-IP2. Multiple ranges are separated using "," (comma) as the delimiter.
# 
# Example IPv4 filters:\n2.0.0.1-2.0.0.20, 24.0.0.1-24.0.0.22
# Example IPv6 filters:\n3FFE:FFFF:7654:FEDA:1245:BA98:0000:0000-3FFE:FFFF:7654:FEDA:1245:BA98:3210:4562
Allow remote server management through WinRM:
  lgpo.set:
  - name: AllowAutoConfig
  - setting:
      AllowAutoConfig_IPv4Filter: text-placeholder
      AllowAutoConfig_IPv6Filter: text-placeholder
  - policy_class: Machine
