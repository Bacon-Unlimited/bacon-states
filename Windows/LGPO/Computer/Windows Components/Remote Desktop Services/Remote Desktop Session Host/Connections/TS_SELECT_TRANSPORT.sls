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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Connections\TS_SELECT_TRANSPORT.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows you to specify which protocols can be used for Remote Desktop Protocol (RDP) access to this server.
# 
# If you enable this policy setting, you must specify if you would like RDP to use UDP.
# 
# You can select one of the following options: "Use both UDP and TCP", "Use only TCP" or "Use either UDP or TCP (default)" 
# 
# If you select "Use either UDP or TCP" and the UDP connection is successful, most of the RDP traffic will use UDP.
# 
# If the UDP connection is not successful or if you select "Use only TCP," all of the RDP traffic will use TCP.
# 
# If you disable or do not configure this policy setting, RDP will choose the optimal protocols for delivering the best user experience.
# 	  
Select RDP transport protocols:
  lgpo.set:
  - name: TS_SELECT_TRANSPORT
  - setting:
      TS_SELECT_TRANSPORT_TYPE: enum-placeholder
  - policy_class: Machine
