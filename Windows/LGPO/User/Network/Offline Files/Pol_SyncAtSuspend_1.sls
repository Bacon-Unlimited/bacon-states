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
# LOCATION: \User\Network\Offline Files\Pol_SyncAtSuspend_1.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# Determines whether offline files are synchonized before a computer is suspended.
# 
# If you enable this setting, offline files are synchronized whenever the computer is suspended. Setting the synchronization action to "Quick" ensures only that all files in the cache are complete. Setting the synchronization action to "Full" ensures that all cached files and folders are up-to-date with the most current version.
# 
# If you disable or do not configuring this setting, files are not synchronized when the computer is suspended.
# 
# Note: If the computer is suspended by closing the display on a portable computer, files are not synchronized. If multiple users are logged on to the computer at the time the computer is suspended, a synchronization is not performed.
Synchronize offline files before suspend:
  lgpo.set:
  - name: Pol_SyncAtSuspend_1
  - setting:
      Lbl_SyncAtSuspendCombo: enum-placeholder
  - policy_class: User
