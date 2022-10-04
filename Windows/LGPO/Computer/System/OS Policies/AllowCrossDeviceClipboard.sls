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
# LOCATION: \Computer\System\OS Policies\AllowCrossDeviceClipboard.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# 
#             This policy setting determines whether Clipboard contents can be synchronized across devices.
#             If you enable this policy setting, Clipboard contents are allowed to be synchronized across devices logged in under the same Microsoft account or Azure AD account.
#             If you disable this policy setting, Clipboard contents cannot be shared to other devices.
#             Policy change takes effect immediately.
#       
Allow Clipboard synchronization across devices:
  lgpo.set:
  - name: AllowCrossDeviceClipboard
  - setting: Enabled
  - policy_class: Machine
