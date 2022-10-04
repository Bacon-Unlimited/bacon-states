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
# LOCATION: \User\Windows Components\Windows Media Player\User Interface\HideSecurityTab.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_WMP9
#
# This policy setting allows you to hide the Security tab in Windows Media Player.
# 
# If you enable this policy setting, the default security settings for the options on the Security tab are used unless the user changed the settings previously. Users can still change security and zone settings by using Internet Explorer unless these settings have been hidden or disabled by Internet Explorer policies.
# 
# If you disable or do not configure this policy setting, users can configure the security settings on the Security tab.
Hide Security Tab:
  lgpo.set:
  - name: HideSecurityTab
  - setting: Enabled
  - policy_class: User
