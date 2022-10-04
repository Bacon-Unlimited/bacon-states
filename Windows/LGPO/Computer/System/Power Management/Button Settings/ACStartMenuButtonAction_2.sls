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
# LOCATION: \Computer\System\Power Management\Button Settings\ACStartMenuButtonAction_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVistaOnly
#
# This policy setting specifies the action that Windows takes when a user presses the Start menu Power button.
# 
# If you enable this policy setting, select one of the following actions:
# -Sleep
# -Hibernate
# -Shut down
# 
# If you disable this policy or do not configure this policy setting, users control this setting.
Select the Start menu Power button action (plugged in):
  lgpo.set:
  - name: ACStartMenuButtonAction_2
  - setting:
      SelectACStartMenuButtonAction: enum-placeholder
  - policy_class: Machine
