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
# LOCATION: \Computer\Windows Components\File Explorer\CheckSameSourceAndTargetForFRAndDFS.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting allows you to prevent data loss when you change the target location for Folder Redirection, and the new and old targets point to the same network share, but have different network paths.
# 
# If you enable this policy setting, Folder Redirection creates a temporary file in the old location in order to verify that new and old locations point to the same network share. If both new and old locations point to the same share, the target path is updated and files are not copied or deleted.  The temporary file is deleted.
# 
# If you disable or do not configure this policy setting, Folder Redirection does not create a temporary file and functions as if both new and old locations point to different shares when their network paths are different.
# 
# Note: If the paths point to different network shares, this policy setting is not required.  If the paths point to the same network share, any data contained in the redirected folders is deleted if this policy setting is not enabled.
Verify old and new Folder Redirection targets point to the same share before redirecting:
  lgpo.set:
  - name: CheckSameSourceAndTargetForFRAndDFS
  - setting: Enabled
  - policy_class: Machine
