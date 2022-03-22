# windows:SUPPORTED_Windows8
#
# This policy, if defined, will prevent antimalware from using the configured proxy server when communicating with the specified IP addresses. The address value should be entered as a valid URL.
# 
#     If you enable this setting, the proxy server will be bypassed for the specified addresses.
# 
#     If you disable or do not configure this setting, the proxy server will not be bypassed for the specified addresses.
Define addresses to bypass proxy server:
  lgpo.set:
  - name: ProxyBypass
  - setting:
      ProxyBypass: text-placeholder
  - policy_class: Machine
