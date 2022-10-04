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
# LOCATION: \Computer\System\User Profiles\SlowLinkTimeOut.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting defines a slow connection for roaming user profiles and establishes thresholds for two tests of network speed. 
# 
# To determine the network performance characteristics, a connection is made to the file share storing the user's profile and 64 kilobytes of data is transfered. From that connection and data transfer, the network's latency and connection speed are determined.
# 
# This policy setting and related policy settings in this folder together define the system's response when roaming user profiles are slow to load.
# 
# If you enable this policy setting, you can change how long Windows waits for a response from the server before considering the connection to be slow.
# 
# If you disable or do not configure this policy setting, Windows considers the network connection to be slow if the server returns less than 500 kilobits of data per second or take 120 milliseconds to respond.Consider increasing this value for clients using DHCP Service-assigned addresses or for computers accessing profiles across dial-up connections.Important: If the "Do not detect slow network connections" policy setting is enabled, this policy setting is ignored. Also, if the "Delete cached copies of roaming profiles" policy setting is enabled, there is no local copy of the roaming profile to load when the system detects a slow connection.
Control slow network connection timeout for user profiles:
  lgpo.set:
  - name: SlowLinkTimeOut
  - setting:
      SlowLinkWaitInterval: decimal-placeholder
      TransferRateOp: decimal-placeholder
  - policy_class: Machine
