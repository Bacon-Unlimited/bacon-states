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
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Control Panel\ControlPanel_SendUTF8Query.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting allows you to manage whether Internet Explorer uses 8-bit Unicode Transformation Format (UTF-8) for mailto links.
# 
# If you enable this policy setting, Internet Explorer encodes mailto links in UTF-8.
# 
# If you disable or do not configure this policy setting, Internet Explorer sends mailto links encoded through the user's code page. This behavior matches the behavior of Internet Explorer 6 and earlier. The user can change this behavior on the Internet Explorer Tools menu: Click Internet Options, click the Advanced tab, and then under International, select the "Use UTF-8 for mailto links" check box.
Use UTF-8 for mailto links:
  lgpo.set:
  - name: ControlPanel_SendUTF8Query
  - setting: Enabled
  - policy_class: Machine
