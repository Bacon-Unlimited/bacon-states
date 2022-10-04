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
# LOCATION: \Computer\Windows Components\File Explorer\ShowSleepOption.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# Shows or hides sleep from the power options menu.
# 
# If you enable this policy setting, the sleep option will be shown in the Power Options menu (as long as it is supported by the machine's hardware).
# 
# If you disable this policy setting, the sleep option will never be shown in the Power Options menu.
# 
# If you do not configure this policy setting, users will be able to choose whether they want sleep to show through the Power Options Control Panel.
Show sleep in the power options menu:
  lgpo.set:
  - name: ShowSleepOption
  - setting: Enabled
  - policy_class: Machine
