# windows:SUPPORTED_Win2k
#
# This policy setting permits users to change installation options that typically are available only to system administrators.
# 
# If you enable this policy setting, some of the security features of Windows Installer are bypassed. It permits installations to complete that otherwise would be halted due to a security violation.
# 
# If you disable or do not configure this policy setting, the security features of Windows Installer prevent users from changing installation options typically reserved for system administrators, such as specifying the directory to which files are installed.
# 
# If Windows Installer detects that an installation package has permitted the user to change a protected option, it stops the installation and displays a message. These security features operate only when the installation program is running in a privileged security context in which it has access to directories denied to the user.
# 
# This policy setting is designed for less restrictive environments. It can be used to circumvent errors in an installation program that prevents software from being installed.
Allow user control over installs:
  lgpo.set:
  - name: EnableUserControl
  - setting: Enabled
  - policy_class: Machine
