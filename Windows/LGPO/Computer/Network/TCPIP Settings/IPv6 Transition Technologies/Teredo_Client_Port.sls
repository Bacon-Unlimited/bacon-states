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
# LOCATION: \Computer\Network\TCPIP Settings\IPv6 Transition Technologies\Teredo_Client_Port.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting allows you to select the UDP port the Teredo client will use to send packets. If you leave the default of 0, the operating system will select a port (recommended). If you select a UDP port that is already in use by a system, the Teredo client will fail to initialize.
# 
# If you enable this policy setting, you can customize a UDP port for the Teredo client.
# 
# If you disable or do not configure this policy setting, the local host setting is used.
# 
# 
Set Teredo Client Port:
  lgpo.set:
  - name: Teredo_Client_Port
  - setting:
      TeredoClientPortBox: decimal-placeholder
  - policy_class: Machine
