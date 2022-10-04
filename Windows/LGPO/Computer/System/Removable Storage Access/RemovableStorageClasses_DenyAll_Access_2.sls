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
# LOCATION: \Computer\System\Removable Storage Access\RemovableStorageClasses_DenyAll_Access_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# Configure access to all removable storage classes.
# 
# This policy setting takes precedence over any individual removable storage policy settings. To manage individual classes, use the policy settings available for each class.
# 
# If you enable this policy setting, no access is allowed to any removable storage class.
# 
# If you disable or do not configure this policy setting, write and read accesses are allowed to all removable storage classes.
'All Removable Storage classes: Deny all access':
  lgpo.set:
  - name: RemovableStorageClasses_DenyAll_Access_2
  - setting: Enabled
  - policy_class: Machine
