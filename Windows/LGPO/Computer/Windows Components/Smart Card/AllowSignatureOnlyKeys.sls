# windows:SUPPORTED_WindowsVista
#
# This policy setting lets you allow signature key-based certificates to be enumerated and available for logon.
# 
# If you enable this policy setting then any certificates available on the smart card with a signature only key will be listed on the logon screen.
# 
# If you disable or do not configure this policy setting, any available smart card signature key-based certificates will not be listed on the logon screen.
Allow signature keys valid for Logon:
  lgpo.set:
  - name: AllowSignatureOnlyKeys
  - setting: Enabled
  - policy_class: Machine
