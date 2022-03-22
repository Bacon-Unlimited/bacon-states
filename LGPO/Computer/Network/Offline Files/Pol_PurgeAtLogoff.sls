# windows:SUPPORTED_WindowsPreVista
#
# Deletes local copies of the user's offline files when the user logs off.
# 
# This setting specifies that automatically and manually cached offline files are retained only while the user is logged on to the computer. When the user logs off, the system deletes all local copies of offline files.
# 
# If you disable this setting or do not configure it, automatically and manually cached copies are retained on the user's computer for later offline use.
# 
# Caution: Files are not synchronized before they are deleted. Any changes to local files since the last synchronization are lost.
"At logoff, delete local copy of user\u2019s offline files":
  lgpo.set:
  - name: Pol_PurgeAtLogoff
  - setting:
      Lbl_PurgeOnlyAutoCachedFiles: boolean-placeholder
  - policy_class: Machine
