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
# LOCATION: \Computer\Windows Components\Internet Explorer\DisableACRPrompt.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# This policy setting turns off Automatic Crash Recovery.
# 
# If you enable this policy setting, Automatic Crash Recovery does not prompt the user to recover his or her data after a program stops responding.
# 
# If you disable or do not configure this policy setting, Automatic Crash Recovery prompts the user to recover his or her data after a program stops responding.
Turn off Automatic Crash Recovery:
  lgpo.set:
  - name: DisableACRPrompt
  - setting: Enabled
  - policy_class: Machine