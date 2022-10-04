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
# LOCATION: \User\Windows Components\Cloud Content\DisableThirdPartySuggestions.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# If you enable this policy, Windows spotlight features like lock screen spotlight, suggested apps in Start menu or Windows tips will no longer suggest apps and content from third-party software publishers. Users may still see suggestions and tips to make them more productive with Microsoft features and apps.
# 
# If you disable or do not configure this policy, Windows spotlight features may suggest apps and content from third-party software publishers in addition to Microsoft apps and content.
Do not suggest third-party content in Windows spotlight:
  lgpo.set:
  - name: DisableThirdPartySuggestions
  - setting: Enabled
  - policy_class: User
