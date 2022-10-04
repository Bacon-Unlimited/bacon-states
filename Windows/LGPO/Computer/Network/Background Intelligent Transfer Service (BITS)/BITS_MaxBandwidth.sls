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
# LOCATION: \Computer\Network\Background Intelligent Transfer Service (BITS)\BITS_MaxBandwidth.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_WindowsXPSP2WindowsNETSP1orBITS20
#
# This policy setting limits the network bandwidth that Background Intelligent Transfer Service (BITS) uses for background transfers. (This policy setting does not affect foreground transfers.)
# 
#           You can specify a limit to use during a specific time interval and at all other times. For example, limit the use of network bandwidth to 10 Kbps from 8:00 A.M. to 5:00 P.M., and use all available unused bandwidth the rest of the day's hours.
# 
#           If you enable this policy setting, BITS will limit its bandwidth usage to the specified values. You can specify the limit in kilobits per second (Kbps). If you specify a value less than 2 kilobits, BITS will continue to use approximately 2 kilobits. To prevent BITS transfers from occurring, specify a limit of 0.
# 
#           If you disable or do not configure this policy setting, BITS uses all available unused bandwidth.
# 
#           Note: You should base the limit on the speed of the network link, not the computer's network interface card (NIC). This policy setting does not affect Peercaching transfers between peer computers (it does affect transfers from the origin server); the "Limit the maximum network bandwidth used for Peercaching" policy setting should be used for that purpose.
# 
#           Consider using this setting to prevent BITS transfers from competing for network bandwidth when the client computer has a fast network card (10Mbs), but is connected to the network via a slow link (56Kbs).
Limit the maximum network bandwidth for BITS background transfers:
  lgpo.set:
  - name: BITS_MaxBandwidth
  - setting:
      BITS_BandwidthLimitSchedFrom: enum-placeholder
      BITS_BandwidthLimitSchedTo: enum-placeholder
      BITS_MaxTransferRateText: decimal-placeholder
      BITS_MaxTransferRateText_1: decimal-placeholder
      BITS_UseSystemMaximum: boolean-placeholder
  - policy_class: Machine
