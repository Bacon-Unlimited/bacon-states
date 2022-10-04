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
# LOCATION: \Computer\Network\Windows Connection Manager\WCM_BlockNonDomain.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting prevents computers from connecting to both a domain based network and a non-domain based network at the same time.
# 
# If this policy setting is enabled, the computer responds to automatic and manual network connection attempts based on the following circumstances:
# 
# Automatic connection attempts
# - When the computer is already connected to a domain based network, all automatic connection attempts to non-domain networks are blocked.
# - When the computer is already connected to a non-domain based network, automatic connection attempts to domain based networks are blocked.
# 
# Manual connection attempts
# - When the computer is already connected to either a non-domain based network or a domain based network over media other than Ethernet, and a user attempts to create a manual connection to an additional network in violation of this policy setting, the existing network connection is disconnected and the manual connection is allowed.
# - When the computer is already connected to either a non-domain based network or a domain based network over Ethernet, and a user attempts to create a manual connection to an additional network in violation of this policy setting, the existing Ethernet connection is maintained and the manual connection attempt is blocked.
# 
# If this policy setting is not configured or is disabled, computers are allowed to connect simultaneously to both domain and non-domain networks.
#       
Prohibit connection to non-domain networks when connected to domain authenticated network:
  lgpo.set:
  - name: WCM_BlockNonDomain
  - setting: Enabled
  - policy_class: Machine
