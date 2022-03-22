# TS_SUPPORTED_ONLY_Windows7_OR_SERVER2K8R2
#
# This policy setting allows you to specify the visual experience that remote users will have in Remote Desktop Connection (RDC) connections that use RemoteFX. You can use this policy to balance the network bandwidth usage with the type of graphics experience that is delivered.
# 
# Depending on the requirements of your users, you can reduce network bandwidth usage by reducing the screen capture rate. You can also reduce network bandwidth usage by reducing the image quality (increasing the amount of image compression that is performed).
# 
# If you have a higher than average bandwidth network, you can maximize the utilization of bandwidth by selecting the highest setting for screen capture rate and the highest setting for image quality.
# 
# By default, Remote Desktop Connection sessions that use RemoteFX are optimized for a balanced experience over LAN conditions. If you disable or do not configure this policy setting, Remote Desktop Connection sessions that use RemoteFX will be the same as if the medium screen capture rate and the medium image compression settings were selected (the default behavior). 
# 
Optimize visual experience when using RemoteFX:
  lgpo.set:
  - name: TS_RemoteDesktopVirtualGraphics
  - setting:
      TS_RemoteDesktopVirtualGraphics_ScreenCaptureRate: enum-placeholder
      TS_RemoteDesktopVirtualGraphics_ScreenImageQuality: enum-placeholder
  - policy_class: Machine
