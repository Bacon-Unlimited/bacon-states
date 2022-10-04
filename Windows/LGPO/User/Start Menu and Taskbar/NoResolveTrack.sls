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
# LOCATION: \User\Start Menu and Taskbar\NoResolveTrack.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting prevents the system from using NTFS tracking features to resolve a shortcut.
# 
# If you enable this policy setting, the system does not try to locate the file by using its file ID. It skips this step and begins a comprehensive search of the drive specified in the target path.
# 
# If you disable or do not configure this policy setting, by default, when the system cannot find the target file for a shortcut (.lnk), it searches all paths associated with the shortcut. If the target file is located on an NTFS partition, the system then uses the target's file ID to find a path. If the resulting path is not correct, it conducts a comprehensive search of the target drive in an attempt to find the file.
# 
# Note: This policy setting only applies to target files on NTFS partitions. FAT partitions do not have this ID tracking and search capability.
# 
# Also, see the "Do not track Shell shortcuts during roaming" and the "Do not use the search-based method when resolving shell shortcuts" policy settings.
Do not use the tracking-based method when resolving shell shortcuts:
  lgpo.set:
  - name: NoResolveTrack
  - setting: Enabled
  - policy_class: User
