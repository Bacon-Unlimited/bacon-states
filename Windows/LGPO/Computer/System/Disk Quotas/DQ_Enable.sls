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
# LOCATION: \Computer\System\Disk Quotas\DQ_Enable.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting turns on and turns off disk quota management on all NTFS volumes of the computer, and prevents users from changing the setting.
# 
# If you enable this policy setting, disk quota management is turned on, and users cannot turn it off.
# 
# If you disable the policy setting, disk quota management is turned off, and users cannot turn it on.
# 
# If this policy setting is not configured, disk quota management is turned off by default, but administrators can turn it on.
# 
# To prevent users from changing the setting while a setting is in effect, the system disables the "Enable quota management" option on the Quota tab of NTFS volumes.
# 
# Note: This policy setting turns on disk quota management but does not establish or enforce a particular disk quota limit. To specify a disk quota limit, use the "Default quota limit and warning level" policy setting. Otherwise, the system uses the physical space on the volume as the quota limit.
# 
# Note: To turn on or turn off disk quota management without specifying a setting, in My Computer, right-click the name of an NTFS volume, click Properties, click the Quota tab, and then click "Enable quota management."
Enable disk quotas:
  lgpo.set:
  - name: DQ_Enable
  - setting: Enabled
  - policy_class: Machine
