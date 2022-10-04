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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment\TS_SERVER_LEGACY_RFX.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure graphics encoding to use the RemoteFX Codec on the Remote Desktop Session Host server so that the sessions are compatible with non-Windows thin client devices designed for Windows Server 2008 R2 SP1. These clients only support the Windows Server 2008 R2 SP1 RemoteFX Codec.If you enable this policy setting, users' sessions on this server will only use the Windows Server 2008 R2 SP1 RemoteFX Codec for encoding. This mode is compatible with thin client devices that only support the Windows Server 2008 R2 SP1 RemoteFX Codec.If you disable or do not configure this policy setting, non-Windows thin clients that only support the Windows Server 2008 R2 SP1 RemoteFX Codec will not be able to connect to this server. This policy setting applies only to clients that are using Remote Desktop Protocol (RDP) 7.1, and does not affect clients that are using other RDP versions.
#       
Enable RemoteFX encoding for RemoteFX clients designed for Windows Server 2008 R2 SP1:
  lgpo.set:
  - name: TS_SERVER_LEGACY_RFX
  - setting: Enabled
  - policy_class: Machine
