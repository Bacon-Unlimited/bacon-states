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
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Control Panel\Advanced Page\Advanced_ProxyHttp1_1.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# This policy setting allows you to manage whether Internet Explorer uses HTTP 1.1 through proxy connections.
# 
# If you enable this policy setting, Internet Explorer uses HTTP 1.1 through proxy connections.
# 
# If you disable this policy setting, Internet Explorer does not use HTTP 1.1 through proxy connections.
# 
# If you do not configure this policy setting, users can configure Internet Explorer to use or not use HTTP 1.1 through proxy connections.
Use HTTP 1.1 through proxy connections:
  lgpo.set:
  - name: Advanced_ProxyHttp1_1
  - setting: Enabled
  - policy_class: Machine
