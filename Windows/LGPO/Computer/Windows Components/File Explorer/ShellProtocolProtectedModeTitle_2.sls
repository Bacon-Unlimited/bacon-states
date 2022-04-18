# windows:SUPPORTED_WindowsXPSP2
#
# This policy setting allows you to configure the amount of functionality that the shell protocol can have. When using the full functionality of this protocol, applications can open folders and launch files. The protected mode reduces the functionality of this protocol allowing applications to only open a limited set of folders. Applications are not able to open files with this protocol when it is in the protected mode. It is recommended to leave this protocol in the protected mode to increase the security of Windows.
# 
# If you enable this policy setting the protocol is fully enabled, allowing the opening of folders and files.
# 
# If you disable this policy setting the protocol is in the protected mode, allowing applications to only open a limited set of folders.
# 
# If you do not configure this policy setting the protocol is in the protected mode, allowing applications to only open a limited set of folders.
Turn off shell protocol protected mode:
  lgpo.set:
  - name: ShellProtocolProtectedModeTitle_2
  - setting: Enabled
  - policy_class: Machine
