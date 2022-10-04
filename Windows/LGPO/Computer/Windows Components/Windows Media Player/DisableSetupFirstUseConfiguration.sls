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
# LOCATION: \Computer\Windows Components\Windows Media Player\DisableSetupFirstUseConfiguration.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_WMP9
#
# This policy setting allows you to prevent the anchor window from being displayed when Windows Media Player is in skin mode.
# 
# If you enable this policy setting, the anchor window is hidden when the Player is in skin mode. In addition, the option on the Player tab in the Player that enables users to choose whether the anchor window displays is not available.
# 
# If you disable or do not configure this policy setting, users can show or hide the anchor window when the Player is in skin mode by using the Player tab in the Player.
# 
# If you do not configure this policy setting, and the "Set and lock skin" policy setting is enabled, some options in the anchor window are not available.
Do Not Show First Use Dialog Boxes:
  lgpo.set:
  - name: DisableSetupFirstUseConfiguration
  - setting: Enabled
  - policy_class: Machine
