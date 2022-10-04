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
# LOCATION: \User\Windows Components\Internet Explorer\NoHelpMenu.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting prevents the user from accessing Help in Internet Explorer.
# 
# If you enable this policy setting, the following occur:
#      The Help menu on the menu bar is not functional.
#      Help is removed from the Command bar.
#      The shortcut key F1 does not make Help appear.
#      Help cannot be accessed from the Settings charm (starting with Internet Explorer 10 on Windows 8).
# 
# If you disable or do not configure this policy setting, the Internet Explorer Help menu is available to the user. The user can also use the Command bar and F1 to access Help.
Prevent access to Internet Explorer Help:
  lgpo.set:
  - name: NoHelpMenu
  - setting: Enabled
  - policy_class: User
