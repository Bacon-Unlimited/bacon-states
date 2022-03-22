# windows:SUPPORTED_Windows7
#
# This policy setting allows you to control whether Smart Card Plug and Play is enabled.
# 
# If you enable or do not configure this policy setting, Smart Card Plug and Play will be enabled and the system will attempt to install a Smart Card device driver when a card is inserted in a Smart Card Reader for the first time.
# 
# If you disable this policy setting, Smart Card Plug and Play will be disabled and a device driver will not be installed when a card is inserted in a Smart Card Reader.
# 
# Note: This policy setting is applied only for smart cards that have passed the Windows Hardware Quality Labs (WHQL) testing process.
Turn on Smart Card Plug and Play service:
  lgpo.set:
  - name: SCPnPEnabled
  - setting: Enabled
  - policy_class: Machine
