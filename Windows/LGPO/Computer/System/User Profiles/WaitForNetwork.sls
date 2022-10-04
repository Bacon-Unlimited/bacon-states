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
# LOCATION: \Computer\System\User Profiles\WaitForNetwork.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting controls how long Windows waits for a response from the network before logging on a user without a remote home directory and withou synchronizing roaming user profiles. This policy setting is useful for the cases in which a network might take typically longer to initialize, such as with a wireless network.
# 
# Note: Windows doesn't wait for the network if the physical network connection is not available on the computer (if the media is disconnected or the network adapter is not available).
# 
# If you enable this policy setting, Windows waits for the network to become available up to the maximum wait time specified in this policy setting. Setting the value to zero causes Windows to proceed without waiting for the network.
# 
# If you disable or do not configure this policy setting, Windows waits for the network for a maximum of 30 seconds.
Set maximum wait time for the network if a user has a roaming user profile or remote home directory:
  lgpo.set:
  - name: WaitForNetwork
  - setting:
      WaitForNetwork_Seconds: decimal-placeholder
  - policy_class: Machine
