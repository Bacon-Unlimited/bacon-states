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
# LOCATION: \User\Windows Components\Internet Explorer\RestrictPopupManagement.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage pop-up management functionality in Internet Explorer.
# 
# If you enable this policy setting, the Control Panel information relating to pop-up management will be unavailable (grayed out) and all other pop-up manager controls, notifications, and dialog boxes will not appear. Pop-up windows will continue to function as they did in Windows XP Service Pack 1 or earlier, although windows launched off screen will continue to be re-positioned onscreen.
# 
# If you disable or do not configure this policy setting, the popup management feature will be functional.
Turn off pop-up management:
  lgpo.set:
  - name: RestrictPopupManagement
  - setting: Enabled
  - policy_class: User
