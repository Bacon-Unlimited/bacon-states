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
# LOCATION: \Computer\Windows Components\Windows Update\AUDontShowUasPolicy.sls
#
# SUPPORTED WINDOWS OS
# WU_SUPPORTED_Windows7ToXPSP2
#
# This policy setting allows you to manage whether the 'Install Updates and Shut Down' option is displayed in the Shut Down Windows dialog box.
# 
# If you enable this policy setting, 'Install Updates and Shut Down' will not appear as a choice in the Shut Down Windows dialog box, even if updates are available for installation when the user selects the Shut Down option in the Start menu.
# 
# If you disable or do not configure this policy setting, the 'Install Updates and Shut Down' option will be available in the Shut Down Windows dialog box if updates are available when the user selects the Shut Down option in the Start menu.
Do not display 'Install Updates and Shut Down' option in Shut Down Windows dialog box:
  lgpo.set:
  - name: AUDontShowUasPolicy
  - setting: Enabled
  - policy_class: Machine
