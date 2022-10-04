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
# LOCATION: \Computer\System\Disk NV Cache\BootResumePolicy.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting turns off the boot and resume optimizations for the hybrid hard disks in the system.
# 
# If you enable this policy setting, the system does not use the non-volatile (NV) cache to optimize boot and resume.
# 
# If you disable this policy setting, the system uses the NV cache to achieve faster boot and resume. The system determines the data that will be stored in the NV cache to optimize boot and resume. The required data is stored in the NV cache during shutdown and hibernate, respectively. This might cause a slight increase in the time taken for shutdown and hibernate.
# 
# If you do not configure this policy setting, the default behavior is observed and the NV cache is used for boot and resume optimizations.
# 
# Note: This policy setting is applicable only if the NV cache feature is on.
Turn off boot and resume optimizations:
  lgpo.set:
  - name: BootResumePolicy
  - setting: Enabled
  - policy_class: Machine
