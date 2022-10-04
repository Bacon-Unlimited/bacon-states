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
# LOCATION: \Computer\System\Disk NV Cache\CachePowerModePolicy.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting turns off power save mode on the hybrid hard disks in the system.
# 
# If you enable this policy setting, the hard disks are not put into NV cache power save mode and no power savings are achieved.
# 
# If you disable this policy setting, the hard disks are put into an NV cache power saving mode. In this mode, the system tries to save power by aggressively spinning down the disk.
# 
# If you do not configure this policy setting, the default behavior is to allow the hybrid hard disks to be in power save mode.
# 
# Note: This policy setting is applicable only if the NV cache feature is on.
Turn off cache power mode:
  lgpo.set:
  - name: CachePowerModePolicy
  - setting: Enabled
  - policy_class: Machine
