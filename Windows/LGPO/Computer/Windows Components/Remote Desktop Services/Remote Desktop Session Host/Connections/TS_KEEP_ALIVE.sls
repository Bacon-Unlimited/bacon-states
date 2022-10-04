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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Connections\TS_KEEP_ALIVE.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsNET
#
# This policy setting allows you to enter a keep-alive interval to ensure that the session state on the RD Session Host server is consistent with the client state.
# 
# After an RD Session Host server client loses the connection to an RD Session Host server, the session on the RD Session Host server might remain active instead of changing to a disconnected state, even if the client is physically disconnected from the RD Session Host server. If the client logs on to the same RD Session Host server again, a new session might be established (if the RD Session Host server is configured to allow multiple sessions), and the original session might still be active.
# 
# If you enable this policy setting, you must enter a keep-alive interval. The keep-alive interval determines how often, in minutes, the server checks the session state. The range of values you can enter is 1 to 999,999.
# 
# If you disable or do not configure this policy setting, a keep-alive interval is not set and the server will not check the session state.
Configure keep-alive connection interval:
  lgpo.set:
  - name: TS_KEEP_ALIVE
  - setting:
      TS_KEEP_ALIVE_INTERVAL: decimal-placeholder
  - policy_class: Machine
