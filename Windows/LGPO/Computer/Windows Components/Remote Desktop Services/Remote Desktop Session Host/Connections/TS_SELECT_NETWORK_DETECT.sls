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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Connections\TS_SELECT_NETWORK_DETECT.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows you to specify how the Remote Desktop Protocol will try to detect the network quality (bandwidth and latency).
# 
# You can choose to disable Connect Time Detect, Continuous Network Detect, or both Connect Time Detect and Continuous Network Detect. 
# 
# If you disable Connect Time Detect, Remote Desktop Protocol will not determine the network quality at the connect time, and it will assume that all traffic to this server originates from a low-speed connection.
# 
# If you disable Continuous Network Detect, Remote Desktop Protocol will not try to adapt the remote user experience to varying network quality. 
# 
# If you disable Connect Time Detect and Continuous Network Detect, Remote Desktop Protocol will not try to determine the network quality at the connect time; instead it will assume that all traffic to this server originates from a low-speed connection, and it will not try to adapt the user experience to varying network quality.
# 
# If you disable or do not configure this policy setting, Remote Desktop Protocol will spend up to a few seconds trying to determine the network quality prior to the connection, and it will continuously try to adapt the user experience to varying network quality.
# 
Select network detection on the server:
  lgpo.set:
  - name: TS_SELECT_NETWORK_DETECT
  - setting:
      TS_SELECT_NETWORK_DETECT_LEVEL: enum-placeholder
  - policy_class: Machine
