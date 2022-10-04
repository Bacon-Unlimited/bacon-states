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
# LOCATION: \Computer\Windows Components\OOBE\DisablePrivacyExperience.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_RS5
#
# When logging into a new user account for the first time or after an upgrade in some scenarios, that user may be presented with a screen or series of screens that prompts the user to choose privacy settings for their account. Enable this policy to prevent this experience from launching.
# 
# If this policy is enabled, the privacy experience will not launch for newly-created user accounts or for accounts that would have been prompted to choose their privacy settings after an upgrade.
# 
# If this policy is disabled or not configured, then the privacy experience may launch for newly-created user accounts or for accounts that should be prompted to choose their privacy settings after an upgrade.
Don't launch privacy settings experience on user logon:
  lgpo.set:
  - name: DisablePrivacyExperience
  - setting: Enabled
  - policy_class: Machine
