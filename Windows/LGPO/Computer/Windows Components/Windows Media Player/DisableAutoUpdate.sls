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
# LOCATION: \Computer\Windows Components\Windows Media Player\DisableAutoUpdate.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_WMP9
#
# This policy setting allows you to turn off do not show first use dialog boxes.
# 
# If you enable this policy setting, the Privacy Options and Installation Options dialog boxes are prevented from being displayed the first time a user starts Windows Media Player.
# 
# This policy setting prevents the dialog boxes which allow users to select privacy, file types, and other desktop options from being displayed when the Player is first started. Some of the options can be configured by using other Windows Media Player group policies.
# 
# If you disable or do not configure this policy setting, the dialog boxes are displayed when the user starts the Player for the first time.
Prevent Automatic Updates:
  lgpo.set:
  - name: DisableAutoUpdate
  - setting: Enabled
  - policy_class: Machine
