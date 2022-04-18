# windows:SUPPORTED_WindowsXP
#
# Specifies whether desktop wallpaper is displayed to remote clients connecting via Remote Desktop Services.
# 
# You can use this setting to enforce the removal of wallpaper during a Remote Desktop Services session. By default, Windows XP Professional displays wallpaper to remote clients connecting through Remote Desktop, depending on the client configuration (see the Experience tab in the Remote Desktop Connection options for more information). Servers running Windows Server 2003 do not display wallpaper by default to Remote Desktop Services sessions.
# 
# If the status is set to Enabled, wallpaper never appears in a Remote Desktop Services session.
# 
# If the status is set to Disabled, wallpaper might appear in a Remote Desktop Services session, depending on the client configuration.
# 
# If the status is set to Not Configured, the default behavior applies.
Enforce Removal of Remote Desktop Wallpaper:
  lgpo.set:
  - name: TS_DISABLE_REMOTE_DESKTOP_WALLPAPER
  - setting: Enabled
  - policy_class: Machine
