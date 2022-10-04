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
# LOCATION: \User\Start Menu and Taskbar\NoSMConfigurePrograms.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_6_3ToXPSP1_Or_Win2kSP3
#
# This policy setting allows you to remove the Default Programs link from the Start menu.
# 
# If you enable this policy setting, the Default Programs link is removed from the Start menu.
# 
# Clicking the Default Programs link from the Start menu opens the Default Programs control panel and provides administrators the ability to specify default programs for certain activities, such as Web browsing or sending e-mail, as well as which programs are accessible from the Start menu, desktop, and other locations.
# 
# If you disable or do not configure this policy setting, the Default Programs link is available from the Start menu.
# 
# Note: This policy setting does not prevent the Set Default Programs for This Computer option from appearing in the Default Programs control panel.
Remove Default Programs link from the Start menu.:
  lgpo.set:
  - name: NoSMConfigurePrograms
  - setting: Enabled
  - policy_class: User
