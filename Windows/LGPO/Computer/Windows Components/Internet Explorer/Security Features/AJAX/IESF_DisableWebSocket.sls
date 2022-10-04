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
# LOCATION: \Computer\Windows Components\Internet Explorer\Security Features\AJAX\IESF_DisableWebSocket.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE10
#
# The WebSocket object allows websites to request data across domains from your browser by using the WebSocket protocol. This policy setting allows administrators to enable or disable the WebSocket object. This policy setting does not prevent client-side communication across domains via other features in Internet Explorer 10. Also, this policy setting does not prevent a site from requesting cross-domain data through a server.
# 
# If you enable this policy setting, websites cannot request data across domains by using the WebSocket object.
# 
# If you disable or do not configure this policy setting, websites can request data across domains by using the WebSocket object. By default, the WebSocket object is enabled.
Turn off the WebSocket Object:
  lgpo.set:
  - name: IESF_DisableWebSocket
  - setting: Enabled
  - policy_class: Machine
