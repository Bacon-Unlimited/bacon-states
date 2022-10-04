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
# LOCATION: \User\Windows Components\Windows Media Player\User Interface\DoNotShowAnchor.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# Prevents the anchor window from being displayed when Windows Media Player is in skin mode.
# 
# This policy hides the anchor window when the Player is in skin mode. In addition, the option on the Player tab in the Player that enables users to choose whether the anchor window displays is not available.
# 
# When this policy is not configured or disabled, users can show or hide the anchor window when the Player is in skin mode by using the Player tab in the Player.
# 
# When this policy is not configured and the Set and Lock Skin policy is enabled, some options in the anchor window are not available.
Do Not Show Anchor:
  lgpo.set:
  - name: DoNotShowAnchor
  - setting: Enabled
  - policy_class: User
