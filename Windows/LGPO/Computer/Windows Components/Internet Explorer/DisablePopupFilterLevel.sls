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
# LOCATION: \Computer\Windows Components\Internet Explorer\DisablePopupFilterLevel.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting prevents the user from changing the level of pop-up filtering. The available levels are as follows:
#     High: Block all pop-ups.
#     Medium: Block most automatic pop-ups.
#     Low: Allow pop-ups from secure sites.
# 
# If you enable this policy setting, the user cannot change the filter level. You can specify the filter level by importing Privacy settings from your computer under Internet Explorer Maintenance.
# 
# If you disable or do not configure this policy setting, the user can manage pop-ups by changing the filter level.
# 
# You may also want to enable the "Prevent managing pop-up exception list" and "Turn off pop-up management" policy settings to prevent the user from configuring pop-up behavior.
Prevent changing pop-up filter level:
  lgpo.set:
  - name: DisablePopupFilterLevel
  - setting: Enabled
  - policy_class: Machine
