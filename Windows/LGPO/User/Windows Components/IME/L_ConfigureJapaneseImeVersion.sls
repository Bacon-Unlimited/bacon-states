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
# LOCATION: \User\Windows Components\IME\L_ConfigureJapaneseImeVersion.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_19H1
#
# This policy setting controls the version of Microsoft IME.
# 
# If you dont configure this policy setting, user can control IME version to use. The new Microsoft IME is on by default.
# 
# If you enable this, user is not allowed to control IME version to use. The previous version of Microsoft IME is always selected.
# 
# If you disable this, user is not allowed to control IME version to use. The new Microsoft IME is always selected.
# 
# This Policy setting applies only to Microsoft Japanese IME.
# 
# Note: Changes to this setting will not take effect until the user logs off.
Configure Japanese IME version:
  lgpo.set:
  - name: L_ConfigureJapaneseImeVersion
  - setting: Enabled
  - policy_class: User
