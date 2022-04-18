# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# This policy setting allows you to require a pin for pairing.  
# 
# If you set this to 'Never', a pin isn't required for pairing.
# 
# If you set this to 'First Time', the pairing ceremony for new devices will always require a PIN.
# 
# If you set this to 'Always', all pairings will require PIN.
Require pin for pairing:
  lgpo.set:
  - name: RequirePinForPairing
  - setting:
      RequirePinForPairingDropdown: enum-placeholder
  - policy_class: Machine
