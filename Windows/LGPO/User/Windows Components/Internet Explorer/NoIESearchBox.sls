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
# LOCATION: \User\Windows Components\Internet Explorer\NoIESearchBox.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7_8
#
# This policy setting prevents the Search box from appearing in Internet Explorer. When the Search box is available, it includes all installed search providers and a link to search settings.
# 
# If you enable this policy setting, the Search box does not appear in the Internet Explorer frame.
# 
# If you disable or do not configure this policy setting, the Search box appears by default in the Internet Explorer frame.
# 
# Note: If you enable this policy setting, Internet Explorer does not enumerate search providers for the Accelerators infrastructure. If Accelerators are turned on, users can install search providers as Accelerators to include them on the Accelerator menu.
Prevent Internet Explorer Search box from appearing:
  lgpo.set:
  - name: NoIESearchBox
  - setting: Enabled
  - policy_class: User
