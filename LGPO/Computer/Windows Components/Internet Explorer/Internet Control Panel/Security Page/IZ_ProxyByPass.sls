# SUPPORTED_IE6SP2
#
# This policy setting controls whether sites which bypass the proxy server are mapped into the local Intranet security zone.
# 
# If you enable this policy setting, sites which bypass the proxy server are mapped into the Intranet Zone.
# 
# If you disable this policy setting, sites which bypass the proxy server aren't necessarily mapped into the Intranet Zone (other rules might map one there).
# 
# If you do not configure this policy setting, users choose whether sites which bypass the proxy server are mapped into the Intranet Zone.
'Intranet Sites: Include all sites that bypass the proxy server':
  lgpo.set:
  - name: IZ_ProxyByPass
  - setting: Enabled
  - policy_class: Machine
