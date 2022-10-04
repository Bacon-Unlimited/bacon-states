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
# LOCATION: \Computer\System\Logon\UseOEMBackground.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7Only
#
# This policy setting ignores Windows Logon Background.
# 
# This policy setting may be used to make Windows give preference to a custom logon background. 
# 
# If you enable this policy setting, the logon screen always attempts to load a custom background instead of the Windows-branded logon background. 
# 
# If you disable or do not configure this policy setting, Windows uses the default Windows logon background or custom background.
Always use custom logon background:
  lgpo.set:
  - name: UseOEMBackground
  - setting: Enabled
  - policy_class: Machine
