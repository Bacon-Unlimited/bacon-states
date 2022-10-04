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
# LOCATION: \User\Windows Components\Internet Explorer\Browser menus\NoReportSiteProblems.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE11
#
# This policy setting allows you to manage whether users can launch the report site problems dialog using a menu option.
# 
# If you enable this policy setting, a menu option wont be available in Internet Explorer settings, or in the tools menu in the desktop. Users wont be able to use it to launch the report site problems dialog box.
# 
# If you disable or do not configure this policy setting, the menu options will be available.
Turn off the ability to launch report site problems using a menu option:
  lgpo.set:
  - name: NoReportSiteProblems
  - setting: Enabled
  - policy_class: User
