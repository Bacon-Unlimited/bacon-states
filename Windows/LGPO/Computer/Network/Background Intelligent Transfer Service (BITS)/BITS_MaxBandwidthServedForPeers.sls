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
# LOCATION: \Computer\Network\Background Intelligent Transfer Service (BITS)\BITS_MaxBandwidthServedForPeers.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting limits the network bandwidth that BITS uses for peer cache transfers (this setting does not affect transfers from the origin server).
#           To prevent any negative impact to a computer caused by serving other peers, by default BITS will use up to 30 percent of the bandwidth of the slowest active network interface. For example, if a computer has both a 100 Mbps network card and a 56 Kbps modem, and both are active, BITS will use a maximum of 30 percent of 56 Kbps. 
#           You can change the default behavior of BITS, and specify a fixed maximum bandwidth that BITS will use for peer caching.
# 
#           If you enable this policy setting, you can enter a value in bits per second (bps) between 1048576 and 4294967200 to use as the maximum network bandwidth used for peer caching.
# 
#           If you disable this policy setting or do not configure it, the default value of 30 percent of the slowest active network interface will be used.
# 
#           Note: This setting has no effect if the "Allow BITS peer caching" policy setting is disabled or not configured.
Limit the maximum network bandwidth used for Peercaching:
  lgpo.set:
  - name: BITS_MaxBandwidthServedForPeers
  - setting:
      BITS_MaxBandwidthServedForPeersList: decimal-placeholder
  - policy_class: Machine
