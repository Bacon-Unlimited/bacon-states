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
# LOCATION: \User\Windows Components\Windows Media Player\Playback\PolicyCodecUpdate.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_WMP8
#
# This policy setting allows you to prevent Windows Media Player from downloading codecs.
# 
# If you enable this policy setting, the Player is prevented from automatically downloading codecs to your computer. In addition, the Download codecs automatically check box on the Player tab in the Player is not available.
# 
# If you disable this policy setting, codecs are automatically downloaded and the Download codecs automatically check box is not available.
# 
# If you do not configure this policy setting, users can change the setting for the Download codecs automatically check box.
Prevent Codec Download:
  lgpo.set:
  - name: PolicyCodecUpdate
  - setting: Enabled
  - policy_class: User
