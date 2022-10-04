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
# LOCATION: \Computer\System\Disk NV Cache\SolidStatePolicy.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting turns off the solid state mode for the hybrid hard disks. 
# 
# If you enable this policy setting, frequently written files such as the file system metadata and registry may not be stored in the NV cache.
# 
# If you disable this policy setting, the system will store frequently written data into the non-volatile (NV) cache. This allows the system to exclusively run out of the NV cache and power down the disk for longer periods to save power. Note that this can cause increased wear of the NV cache.
# 
# If you do not configure this policy setting, the default behavior of the system is observed and frequently written files will be stored in the NV cache.
# 
# Note: This policy setting is applicable only if the NV cache feature is on.
Turn off solid state mode:
  lgpo.set:
  - name: SolidStatePolicy
  - setting: Enabled
  - policy_class: Machine
