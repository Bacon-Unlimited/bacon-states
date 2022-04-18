# windows:SUPPORTED_Windows7ToVista
#
# This policy setting allows you to allow or deny remote access to the Plug and Play interface. 
# 
# If you enable this policy setting, remote connections to the Plug and Play interface are allowed.
# 
# If you disable or do not configure this policy setting, remote connections to the Plug and Play interface are not allowed.
Allow remote access to the Plug and Play interface:
  lgpo.set:
  - name: DeviceManagement_RPCInterface_Allow
  - setting: Enabled
  - policy_class: Machine
