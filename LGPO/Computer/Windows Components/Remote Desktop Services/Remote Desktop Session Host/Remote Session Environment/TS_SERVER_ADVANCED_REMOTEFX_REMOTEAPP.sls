# windows:SUPPORTED_Windows_6_3_NOARM
#
# This policy setting allows you to enable RemoteApp programs to use advanced graphics, including support for transparency, live thumbnails, and seamless application moves. This policy setting applies only to RemoteApp programs and does not apply to remote desktop sessions.
# 
# If you enable or do not configure this policy setting, RemoteApp programs published from this RD Session Host server will use these advanced graphics.
# 
# If you disable this policy setting, RemoteApp programs published from this RD Session Host server will not use these advanced graphics. You may want to choose this option if you discover that applications published as RemoteApp programs do not support these advanced graphics. 
# 
#     
Use advanced RemoteFX graphics for RemoteApp:
  lgpo.set:
  - name: TS_SERVER_ADVANCED_REMOTEFX_REMOTEAPP
  - setting: Enabled
  - policy_class: Machine
