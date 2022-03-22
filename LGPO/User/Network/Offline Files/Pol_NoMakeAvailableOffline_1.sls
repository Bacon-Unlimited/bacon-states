# windows:SUPPORTED_Win2k
#
# This policy setting prevents users from making network files and folders available offline.
# 
# If you enable this policy setting, users cannot designate files to be saved on their computer for offline use. However, Windows will still cache local copies of files that reside on network shares designated for automatic caching.
# 
# If you disable or do not configure this policy setting, users can manually specify files and folders that they want to make available offline.
# 
# Notes:
# 
# This policy setting appears in the Computer Configuration and User Configuration folders. If both policy settings are configured, the policy setting in Computer Configuration takes precedence.
# 
# The "Make Available Offline" command is called "Always available offline" on computers running Windows Server 2012, Windows Server 2008 R2, Windows Server 2008, Windows 8, Windows 7, or Windows Vista.
#       
Remove "Make Available Offline" command:
  lgpo.set:
  - name: Pol_NoMakeAvailableOffline_1
  - setting: Enabled
  - policy_class: User
