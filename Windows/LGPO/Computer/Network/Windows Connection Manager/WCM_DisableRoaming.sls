# windows:SUPPORTED_Windows8
#
# This policy setting prevents clients from connecting to Mobile Broadband networks when the client is registered on a roaming provider network.
# 
# If this policy setting is enabled, all automatic and manual connection attempts to roaming provider networks are blocked until the client registers with the home provider network.
# 
# If this policy setting is not configured or is disabled, clients are allowed to connect to roaming provider Mobile Broadband networks.
#       
Prohibit connection to roaming Mobile Broadband networks:
  lgpo.set:
  - name: WCM_DisableRoaming
  - setting: Enabled
  - policy_class: Machine
