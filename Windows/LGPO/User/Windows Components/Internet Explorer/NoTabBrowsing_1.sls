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
# LOCATION: \User\Windows Components\Internet Explorer\NoTabBrowsing_1.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7_10
#
# This policy setting allows you to turn off tabbed browsing and related entry points from the Internet Explorer user interface. Starting with Windows 8, this policy only applies to Internet Explorer on the desktop.
# 
# If you enable this policy setting, tabbed browsing and related entry points are turned off for Internet Explorer, and the user cannot turn them on.
# 
# If you disable this policy setting, tabbed browsing and related entry points appear on the user interface for Internet Explorer, and the user cannot turn them off.
# 
# If you do not configure this policy setting, the user can turn on or turn off tabbed browsing.
Turn off tabbed browsing:
  lgpo.set:
  - name: NoTabBrowsing_1
  - setting: Enabled
  - policy_class: User