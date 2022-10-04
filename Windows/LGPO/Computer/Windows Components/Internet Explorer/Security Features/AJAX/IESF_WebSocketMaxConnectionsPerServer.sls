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
# LOCATION: \Computer\Windows Components\Internet Explorer\Security Features\AJAX\IESF_WebSocketMaxConnectionsPerServer.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE10
#
# This policy setting allows you to change the default limit of WebSocket connections per server. The default limit is 6; you can select a value from 2 through 128.
# 
# If you enable this policy setting, Internet Explorer uses the WebSocket connection limit that you set with this policy setting.
# 
# If you disable or do not configure this policy setting, Internet Explorer uses the default limit of 6 WebSocket connections per server.
Set the maximum number of WebSocket connections per server:
  lgpo.set:
  - name: IESF_WebSocketMaxConnectionsPerServer
  - setting:
      IESF_WebSocketMaxConnections: decimal-placeholder
  - policy_class: Machine
