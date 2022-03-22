# windows:SUPPORTED_Windows_10_0
#
# This policy setting defines the URL of a proxy .pac file that should be used when the client attempts to connect the network for security intelligence updates and MAPS reporting. If the proxy auto-config fails or if there is no proxy auto-config specified, the client will fall back to the alternative options (in order):
#       1. Proxy server (if specified)
#       2. Proxy .pac URL (if specified)
#       3. None
#       4. Internet Explorer proxy settings
#       5. Autodetect
# 
#       If you enable this setting, the proxy setting will be set to use the specified proxy .pac according to the order specified above.
# 
#       If you disable or do not configure this setting, the proxy will skip over this fallback step according to the order specified above.
Define proxy auto-config (.pac) for connecting to the network:
  lgpo.set:
  - name: ProxyPacUrl
  - setting:
      ProxyPacUrl: text-placeholder
  - policy_class: Machine
