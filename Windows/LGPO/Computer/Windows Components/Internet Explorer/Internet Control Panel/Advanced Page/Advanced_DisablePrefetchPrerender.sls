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
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Control Panel\Advanced Page\Advanced_DisablePrefetchPrerender.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE11
#
# This policy setting determines whether Internet Explorer preemptively loads websites and content in the background, speeding up performance such that when the user clicks a hyperlink, the background page seamlessly switches into view.
# 
# If you enable this policy setting, Internet Explorer doesn't load any websites or content in the background.
# 
# If you disable this policy setting, Internet Explorer preemptively loads websites and content in the background.
# 
# If you don't configure this policy setting, users can turn this behavior on or off, using Internet Explorer settings. This feature is turned on by default
Turn off loading websites and content in the background to optimize performance:
  lgpo.set:
  - name: Advanced_DisablePrefetchPrerender
  - setting: Enabled
  - policy_class: Machine
