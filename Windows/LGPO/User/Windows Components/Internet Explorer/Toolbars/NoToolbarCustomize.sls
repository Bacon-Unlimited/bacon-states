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
# LOCATION: \User\Windows Components\Internet Explorer\Toolbars\NoToolbarCustomize.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5
#
# Prevents users from determining which buttons appear on the Microsoft Internet Explorer and File Explorer standard toolbars. The buttons appearing on the toolbar can be customized by the "Customize" option. This is present under the Toolbars submenu of the View menu in Internet Explorer 6 and under the Toolbars submenu of the Tools menu in the Command bar in subsequent versions of Internet Explorer.
# 
# If you enable this policy, the Customize option will be removed from the menu.
# 
# If you disable this policy or do not configure it, users can customize which buttons appear on the Internet Explorer and File Explorer toolbars.
# 
# This policy can be used in coordination with the "Disable customizing browser toolbars" policy, which prevents users from determining which toolbars are displayed in Internet Explorer and File Explorer.
Disable customizing browser toolbar buttons:
  lgpo.set:
  - name: NoToolbarCustomize
  - setting: Enabled
  - policy_class: User
