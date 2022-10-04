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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection\TS_CLIENT_PNP.sls
#
# SUPPORTED WINDOWS OS
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
