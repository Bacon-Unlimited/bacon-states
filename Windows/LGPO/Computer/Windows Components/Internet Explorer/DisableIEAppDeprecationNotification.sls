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
# LOCATION: \Computer\Windows Components\Internet Explorer\DisableIEAppDeprecationNotification.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE11
#
# This policy setting allows you to manage whether the notification bar reminder that Internet Explorer is being retired is displayed. By default, the Notification bar is displayed in Internet Explorer 11.
# 
# If you enable this policy setting, the Notification bar will not be displayed in Internet Explorer 11.
# 
# If you disable, or do not configure, this policy setting, the Notification bar will be displayed in Internet Explorer 11.
Hide Internet Explorer 11 retirement notification:
  lgpo.set:
  - name: DisableIEAppDeprecationNotification
  - setting: Enabled
  - policy_class: Machine
