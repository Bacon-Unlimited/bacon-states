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
# LOCATION: \User\Windows Components\Windows Media Player\User Interface\HidePrivacyTab.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_WMP9
#
# This policy setting allows you to hide the Privacy tab in Windows Media Player.
# 
# If you enable this policy setting, the "Update my music files (WMA and MP3 files) by retrieving missing media information from the Internet" check box on the Media Library tab is available, even though the Privacy tab is hidden, unless the "Prevent music file media information retrieval" policy setting is enabled.
# 
# The default privacy settings are used for the options on the Privacy tab unless the user changed the settings previously.
# 
# If you disable or do not configure this policy setting, the Privacy tab is not hidden, and users can configure any privacy settings not configured by other polices.
Hide Privacy Tab:
  lgpo.set:
  - name: HidePrivacyTab
  - setting: Enabled
  - policy_class: User
