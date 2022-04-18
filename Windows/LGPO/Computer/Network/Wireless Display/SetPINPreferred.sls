# windows:SUPPORTED_Windows_10_0
#
# This policy applies to Wireless Display connections. This policy changes the preference order of the pairing methods.
# 
# When enabled, it makes the connections to prefer a PIN for pairing to Wireless Display devices over the Push Button pairing method.
# 
# If this policy setting is disabled or is not configured, by default Push Button pairing is preferred (if allowed by other policies).
#       
Prefer PIN pairing:
  lgpo.set:
  - name: SetPINPreferred
  - setting: Enabled
  - policy_class: Machine
