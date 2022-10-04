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
# LOCATION: \Computer\Windows Components\Microsoft User Experience Virtualization\MaxPackageSizeInBytes.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting allows you to configure the UE-V Agent to write a warning event to the event log when a settings package file size reaches a defined threshold. By default the UE-V Agent does not report information about package file size. 
# If you enable this policy setting, specify the threshold file size in bytes. When the settings package file exceeds this threshold the UE-V Agent will write a warning event to the event log.
# If you disable or do not configure this policy setting, no event is written to the event log to report settings package size.
#       
Settings package size warning threshold:
  lgpo.set:
  - name: MaxPackageSizeInBytes
  - setting:
      MaxPackageSizeInBytes: decimal-placeholder
  - policy_class: Machine
