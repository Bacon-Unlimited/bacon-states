# windows:SUPPORTED_WindowsVistaSP1
#
# This policy setting prevents plaintext PINs from being returned by Credential Manager. 
# 
# If you enable this policy setting, Credential Manager does not return a plaintext PIN. 
# 
# If you disable or do not configure this policy setting, plaintext PINs can be returned by Credential Manager.
# 
# Note: Enabling this policy setting could prevent certain smart cards from working on Windows. Please consult your smart card manufacturer to find out whether you will be affected by this policy setting.
# 
Prevent plaintext PINs from being returned by Credential Manager:
  lgpo.set:
  - name: DisallowPlaintextPin
  - setting: Enabled
  - policy_class: Machine
