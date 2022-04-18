# windows:SUPPORTED_Win2k
#
# This policy setting allows Web-based programs to install software on the computer without notifying the user.
# 
# If you disable or do not configure this policy setting, by default, when a script hosted by an Internet browser tries to install a program on the system, the system warns users and allows them to select or refuse the installation.
# 
# If you enable this policy setting, the warning is suppressed and allows the installation to proceed.
# 
# This policy setting is designed for enterprises that use Web-based tools to distribute programs to their employees. However, because this policy setting can pose a security risk, it should be applied cautiously.
Prevent Internet Explorer security prompt for Windows Installer scripts:
  lgpo.set:
  - name: SafeForScripting
  - setting: Enabled
  - policy_class: Machine
