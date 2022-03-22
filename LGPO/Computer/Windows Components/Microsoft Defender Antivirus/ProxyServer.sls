# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure the named proxy that should be used when the client attempts to connect to the network for security intelligence updates and MAPS reporting. If the named proxy fails or if there is no proxy specified, the client will fall back to the alternative options (in order):
#       1. Proxy server (if specified)
#       2. Proxy .pac URL (if specified)
#       3. None
#       4. Internet Explorer proxy settings
#       5. Autodetect
# 
#       If you enable this setting, the proxy will be set to the specified URL according to the order specified above. The URL should be proceeded with either http:// or https://.
# 
#       If you disable or do not configure this setting, the proxy will skip over this fallback step according to the order specified above.
#     
Define proxy server for connecting to the network:
  lgpo.set:
  - name: ProxyServer
  - setting:
      ProxyServer: text-placeholder
  - policy_class: Machine
