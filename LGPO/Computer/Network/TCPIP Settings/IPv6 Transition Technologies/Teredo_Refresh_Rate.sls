# windows:SUPPORTED_Windows7
#
# This policy setting allows you to configure the Teredo refresh rate.
# 
# Note: On a periodic basis (by default, every 30 seconds), Teredo clients send a single Router Solicitation packet to the Teredo server. The Teredo server sends a Router Advertisement Packet in response. This periodic packet refreshes the IP address and UDP port mapping in the translation table of the Teredo client's NAT device.
# 
# If you enable this policy setting, you can specify the refresh rate.  If you choose a refresh rate longer than the port mapping in the Teredo client's NAT device, Teredo might stop working or connectivity might be intermittent.
# 
# If you disable or do not configure this policy setting, the refresh rate is configured using the local settings on the computer. The default refresh rate is 30 seconds.
# 
# 
Set Teredo Refresh Rate:
  lgpo.set:
  - name: Teredo_Refresh_Rate
  - setting:
      TeredoRefreshRateBox: decimal-placeholder
  - policy_class: Machine
