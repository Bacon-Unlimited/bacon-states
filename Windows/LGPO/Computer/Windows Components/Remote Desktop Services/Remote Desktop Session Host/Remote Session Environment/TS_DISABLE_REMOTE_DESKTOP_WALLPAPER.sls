####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment\TS_DISABLE_REMOTE_DESKTOP_WALLPAPER.sls
#
# SUPPORTED WINDOWS OS
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
