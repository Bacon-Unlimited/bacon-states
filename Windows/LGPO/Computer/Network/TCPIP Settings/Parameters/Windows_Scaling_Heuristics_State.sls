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
# LOCATION: \Computer\Network\TCPIP Settings\Parameters\Windows_Scaling_Heuristics_State.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7ToVistaAndWindows10
#
# This policy setting allows you to configure Window Scaling Heuristics. Window Scaling Heuristics is an algorithm to identify connectivity and throughput problems caused by many Firewalls and other middle boxes that don't interpret Window Scaling option correctly.
# 
# If you do not configure this policy setting, the local host settings are used.
# 
# If you enable this policy setting, Window Scaling Heuristics will be enabled and system will try to identify connectivity and throughput problems and take appropriate measures.
# 
# If you disable this policy setting, Window Scaling Heuristics will be disabled and system will not try to identify connectivity and throughput problems casued by Firewalls or other middle boxes.
# 
# 
Set Window Scaling Heuristics State:
  lgpo.set:
  - name: Windows_Scaling_Heuristics_State
  - setting: Enabled
  - policy_class: Machine
