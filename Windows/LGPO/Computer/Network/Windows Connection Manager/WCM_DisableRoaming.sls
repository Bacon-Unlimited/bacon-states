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
# LOCATION: \Computer\Network\Windows Connection Manager\WCM_DisableRoaming.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting prevents clients from connecting to Mobile Broadband networks when the client is registered on a roaming provider network.
# 
# If this policy setting is enabled, all automatic and manual connection attempts to roaming provider networks are blocked until the client registers with the home provider network.
# 
# If this policy setting is not configured or is disabled, clients are allowed to connect to roaming provider Mobile Broadband networks.
#       
Prohibit connection to roaming Mobile Broadband networks:
  lgpo.set:
  - name: WCM_DisableRoaming
  - setting: Enabled
  - policy_class: Machine
