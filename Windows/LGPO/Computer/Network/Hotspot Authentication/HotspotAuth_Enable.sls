# windows:SUPPORTED_Windows8
#
# This policy setting defines whether WLAN hotspots are probed for Wireless Internet Service Provider roaming (WISPr) protocol support.
# 
# If a WLAN hotspot supports the WISPr protocol, users can submit credentials when manually connecting to the network. If authentication is successful, users will be connected automatically on subsequent attempts. Credentials can also be configured by network operators.
# 
# If you enable this policy setting, or if you do not configure this policy setting, WLAN hotspots are automatically probed for WISPR protocol support.
# 
# If you disable this policy setting, WLAN hotspots are not probed for WISPr protocol support, and users can only authenticate with WLAN hotspots using a web browser.
# 
Enable Hotspot Authentication:
  lgpo.set:
  - name: HotspotAuth_Enable
  - setting: Enabled
  - policy_class: Machine
