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
# LOCATION: \User\System\Folder Redirection\FolderRedirectionEnableCacheRename.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting controls whether the contents of redirected folders is copied from the old location to the new location or simply renamed in the Offline Files cache when a folder is redirected to a new location.
# 
# If you enable this policy setting, when the path to a redirected folder is changed from one network location to another and Folder Redirection is configured to move the content to the new location, instead of copying the content to the new location, the cached content is renamed in the local cache and not copied to the new location. To use this policy setting, you must move or restore the server content to the new network location using a method that preserves the state of the files, including their timestamps, before updating the Folder Redirection location.
# 
# If you disable or do not configure this policy setting, when the path to a redirected folder is changed and Folder Redirection is configured to move the content to the new location, Windows copies the contents of the local cache to the new network location, then deleted the content from the old network location.
#       
Enable optimized move of contents in Offline Files cache on Folder Redirection server path change:
  lgpo.set:
  - name: FolderRedirectionEnableCacheRename
  - setting: Enabled
  - policy_class: User
