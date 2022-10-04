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
# LOCATION: \User\Windows Components\Cloud Content\DisableTailoredExperiencesWithDiagnosticData.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_RS2
#
# This policy setting lets you prevent Windows from using diagnostic data to provide tailored experiences to the user.
# 
# If you enable this policy setting, Windows will not use diagnostic data from this device (this data may include browser, app and feature usage, depending on the "diagnostic data" setting value) to customize content shown on lock screen, Windows tips, Microsoft consumer features and other related features. If these features are enabled, users will still see recommendations, tips and offers, but they may be less relevant.
# 
# If you disable or do not configure this policy setting, Microsoft will use diagnostic data to provide personalized recommendations, tips and offers to tailor Windows for the user's needs, and make it work better for them.
# 
# Note: this setting does not control Cortana tailored experiences, since there are separate policies to configure it.
Do not use diagnostic data for tailored experiences:
  lgpo.set:
  - name: DisableTailoredExperiencesWithDiagnosticData
  - setting: Enabled
  - policy_class: User
