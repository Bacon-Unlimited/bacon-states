# windows:SUPPORTED_Windows_10_0
#
# This policy applies to Wireless Display connections. This policy means that the use of a PIN for pairing to Wireless Display devices is required rather than optional.
# 
# Conversely it means that Push Button is NOT allowed.
# 
# If this policy setting is disabled or is not configured, by default Push Button pairing is allowed (but not necessarily preferred).
#       
Require PIN pairing:
  lgpo.set:
  - name: SetPINEnforced
  - setting: Enabled
  - policy_class: Machine
