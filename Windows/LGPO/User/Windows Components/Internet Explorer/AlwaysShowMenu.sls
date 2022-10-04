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
# LOCATION: \User\Windows Components\Internet Explorer\AlwaysShowMenu.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting allows you to turn on or turn off the earlier menus (for example, File, Edit, and View) in Internet Explorer.
# 
# If you enable this policy setting, the menu bar appears in Internet Explorer by default, and the user cannot turn it off.
# 
# If you disable this policy setting, the menu bar appears in Internet Explorer by default, and the user cannot turn it on.
# 
# If you do not configure this policy setting, the menu bar is turned off by default. The user can turn on or turn off the menu bar.
Turn on menu bar by default:
  lgpo.set:
  - name: AlwaysShowMenu
  - setting: Enabled
  - policy_class: User
