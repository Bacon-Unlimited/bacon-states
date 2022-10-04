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
# LOCATION: \Computer\System\Disk NV Cache\FeatureOffPolicy.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting turns off all support for the non-volatile (NV) cache on all hybrid hard disks in the system. To check if you have hybrid hard disks in the system, from Device Manager, right-click the disk drive and select Properties. The NV cache can be used to optimize boot and resume by reading data from the cache while the disks are spinning up. The NV cache can also be used to reduce the power consumption of the system by keeping the disks spun down while satisfying reads and writes from the cache.
# 
# If you enable this policy setting, the system will not manage the NV cache and will not enable NV cache power saving mode.
# 
# If you disable this policy setting, the system will manage the NV cache on the disks if the other policy settings for the NV cache are appropriately configured.
# 
# Note: This policy setting will take effect on next boot.
# 
# If you do not configure this policy setting, the default behavior is to turn on support for the NV cache.
Turn off non-volatile cache feature:
  lgpo.set:
  - name: FeatureOffPolicy
  - setting: Enabled
  - policy_class: Machine
