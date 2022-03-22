# windows:SUPPORTED_Win2k
#
# This setting is designed to ensure that shell extensions can operate on a per-user basis. If you enable this setting, Windows is directed to only run those shell extensions that have either been approved by an administrator or that will not impact other users of the machine.
# 
# A shell extension only runs if there is an entry in at least one of the following locations in registry.
# 
# For shell extensions that have been approved by the administrator and are available to all users of the computer, there must be an entry at HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Shell Extensions\Approved.
# 
# For shell extensions to run on a per-user basis, there must be an entry at HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Shell Extensions\Approved.
Allow only per user or approved shell extensions:
  lgpo.set:
  - name: EnforceShellExtensionSecurity
  - setting: Enabled
  - policy_class: User
