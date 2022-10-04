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
# LOCATION: \Computer\Windows Components\Windows Media Player\PreventLibrarySharing.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_WMP11
#
# This policy setting allows you to prevent media sharing from Windows Media Player.
# 
# If you enable this policy setting, any user on this computer is prevented from sharing digital media content from Windows Media Player with other computers and devices that are on the same network. Media sharing is disabled from Windows Media Player or from programs that depend on the Player's media sharing feature.
# 
# If you disable or do not configure this policy setting, anyone using Windows Media Player can turn media sharing on or off.
Prevent Media Sharing:
  lgpo.set:
  - name: PreventLibrarySharing
  - setting: Enabled
  - policy_class: Machine
