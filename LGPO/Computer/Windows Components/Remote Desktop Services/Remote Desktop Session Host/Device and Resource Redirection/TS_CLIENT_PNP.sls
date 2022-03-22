# windows:SUPPORTED_WindowsVista
#
# This policy setting lets you control the redirection of supported Plug and Play and RemoteFX USB devices, such as Windows Portable Devices, to the remote computer in a Remote Desktop Services session. 
# 
# By default, Remote Desktop Services does not allow redirection of supported Plug and Play and RemoteFX USB devices.
# 
# If you disable this policy setting, users can redirect their supported Plug and Play devices to the remote computer. Users can use the More option on the Local Resources tab of Remote Desktop Connection to choose the supported Plug and Play devices to redirect to the remote computer.
# 
# If you enable this policy setting, users cannot redirect their supported Plug and Play devices to the remote computer.If you do not configure this policy setting, users can redirect their supported Plug and Play devices to the remote computer only if it is running Windows Server 2012 R2 and earlier versions.
# 
# Note: You can disable redirection of specific types of supported Plug and Play devices by using Computer Configuration\Administrative Templates\System\Device Installation\Device Installation Restrictions policy settings.
# 
# 
Do not allow supported Plug and Play device redirection:
  lgpo.set:
  - name: TS_CLIENT_PNP
  - setting: Enabled
  - policy_class: Machine
