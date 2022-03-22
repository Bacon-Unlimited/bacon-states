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
