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
# LOCATION: \Computer\Windows Components\Internet Explorer\EnableAutoUpgrade.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE10
#
# This policy setting configures Internet Explorer to automatically install new versions of Internet Explorer when they are available.
# 
# If you enable this policy setting, automatic upgrade of Internet Explorer will be turned on.
# 
# If you disable this policy setting, automatic upgrade of Internet Explorer will be turned off.
# 
# If you do not configure this policy, users can turn on or turn off automatic updates from the About Internet Explorer dialog.
# 
# Note: This policy is deprecated starting with Windows 10 version 1703.
Install new versions of Internet Explorer automatically:
  lgpo.set:
  - name: EnableAutoUpgrade
  - setting: Enabled
  - policy_class: Machine
