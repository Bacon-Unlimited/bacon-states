# windows:SUPPORTED_WindowsVista
#
# This policy setting allows the configuration of wireless settings using Windows Connect Now (WCN). The WCN Registrar enables the discovery and configuration of devices over Ethernet (UPnP), over In-band 802.11 WLAN, through the Windows Portable Device API (WPD), and via USB Flash drives.
# 
# Additional options are available to allow discovery and configuration over a specific medium. 
# 
# If you enable this policy setting, additional choices are available to turn off the operations over a specific medium. 
# 
# If you disable this policy setting, operations are disabled over all media. 
# 
# If you do not configure this policy setting, operations are enabled over all media. 
# 
# The default for this policy setting allows operations over all media.
Configuration of wireless settings using Windows Connect Now:
  lgpo.set:
  - name: WCN_EnableRegistrar
  - setting:
      WCN_EnableRegistrar_DisableFlashConfig: boolean-placeholder
      WCN_EnableRegistrar_DisableInBand802DOT11: boolean-placeholder
      WCN_EnableRegistrar_DisableUPnP: boolean-placeholder
      WCN_EnableRegistrar_DisableWPD: boolean-placeholder
      WCN_EnableRegistrar_MaxWCNDeviceNumber: decimal-placeholder
      WCN_Higher_Precedence_Registrar: enum-placeholder
  - policy_class: Machine
