# TS_SUPPORTED_ONLY_Windows7_OR_SERVER2K8R2
#
# This policy setting allows you to control the availability of RemoteFX on both a Remote Desktop Virtualization Host (RD Virtualization Host) server and a Remote Desktop Session Host (RD Session Host) server.
# 
# When deployed on an RD Virtualization Host server, RemoteFX delivers a rich user experience by rendering content on the server by using graphics processing units (GPUs). By default, RemoteFX for RD Virtualization Host uses server-side GPUs to deliver a rich user experience over LAN connections and RDP 7.1.
# 
# When deployed on an RD Session Host server, RemoteFX delivers a rich user experience by using a hardware-accelerated compression scheme.
# 
# If you enable this policy setting, RemoteFX will be used to deliver a rich user experience over LAN connections and RDP 7.1.
# 
# If you disable this policy setting, RemoteFX will be disabled.
# 
# If you do not configure this policy setting, the default behavior will be used. By default, RemoteFX for RD Virtualization Host is enabled and RemoteFX for RD Session Host is disabled.
#       
Configure RemoteFX:
  lgpo.set:
  - name: TS_EnableVirtualGraphics
  - setting: Enabled
  - policy_class: Machine
