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
# LOCATION: \Computer\Network\Background Intelligent Transfer Service (BITS)\BITS_DisablePeercachingClient.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies whether the computer will act as a BITS peer caching client. By default, when BITS peer caching is enabled, the computer acts as both a peer caching server (offering files to its peers) and a peer caching client (downloading files from its peers).
# 
#           If you enable this policy setting, the computer will no longer use the BITS peer caching feature to download files; files will be downloaded only from the origin server. However, the computer will still make files available to its peers.
# 
#           If you disable or do not configure this policy setting, the computer attempts to download peer-enabled BITS jobs from peer computers before reverting to the origin server.
# 
#           Note: This policy setting has no effect if the "Allow BITS peer caching" policy setting is disabled or not configured.
Do not allow the computer to act as a BITS Peercaching client:
  lgpo.set:
  - name: BITS_DisablePeercachingClient
  - setting: Enabled
  - policy_class: Machine
