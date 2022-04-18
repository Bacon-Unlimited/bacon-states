# windows:SUPPORTED_Windows7
#
# This policy setting allows you to select the UDP port the Teredo client will use to send packets. If you leave the default of 0, the operating system will select a port (recommended). If you select a UDP port that is already in use by a system, the Teredo client will fail to initialize.
# 
# If you enable this policy setting, you can customize a UDP port for the Teredo client.
# 
# If you disable or do not configure this policy setting, the local host setting is used.
# 
# 
Set Teredo Client Port:
  lgpo.set:
  - name: Teredo_Client_Port
  - setting:
      TeredoClientPortBox: decimal-placeholder
  - policy_class: Machine
