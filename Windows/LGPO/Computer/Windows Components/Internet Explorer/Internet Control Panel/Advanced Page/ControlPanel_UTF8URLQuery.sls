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
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Control Panel\Advanced Page\ControlPanel_UTF8URLQuery.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE11
#
# This policy setting determines whether Internet Explorer uses 8-bit Unicode Transformation Format (UTF-8) to encode query strings in URLs before sending them to servers or to proxy servers.
# 
# If you enable this policy setting, you must specify when to use UTF-8 to encode query strings:
#     0) Never encode query strings.
#     1) Only encode query strings for URLs that aren't in the Intranet zone.
#     2) Only encode query strings for URLs that are in the Intranet zone.
#     3) Always encode query strings.
# 
# If you disable or don't configure this policy setting, users can turn this behavior on or off, using Internet Explorer Advanced Options settings. The default is to encode all query strings in UTF-8.
Turn off sending UTF-8 query strings for URLs:
  lgpo.set:
  - name: ControlPanel_UTF8URLQuery
  - setting:
      SelectUTF8URLQueryBehavior: enum-placeholder
  - policy_class: Machine
