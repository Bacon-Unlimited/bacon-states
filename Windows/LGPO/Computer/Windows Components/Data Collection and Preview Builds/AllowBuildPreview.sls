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
# LOCATION: \Computer\Windows Components\Data Collection and Preview Builds\AllowBuildPreview.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_UP_TO_RS2
#
# This policy setting determines whether users can get preview builds of Windows, by configuring controls in Settings > Update and security > Windows Insider Program.
# 
# If you enable or do not configure this policy setting, users can download and install preview builds of Windows by configuring Windows Insider Program settings.
# 
# If you disable this policy setting, Windows Insider Program settings will be unavailable to users through the Settings app.
# 
# This policy is only supported up to Windows 10, Version 1703. Please use 'Manage preview builds' under 'Windows Update for Business' for newer Windows 10 versions.
Toggle user control over Insider builds:
  lgpo.set:
  - name: AllowBuildPreview
  - setting: Enabled
  - policy_class: Machine
