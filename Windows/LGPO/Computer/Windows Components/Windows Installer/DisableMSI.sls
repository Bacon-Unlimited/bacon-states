# windows:SUPPORTED_Win2k
#
# This policy setting restricts the use of Windows Installer.
# 
# If you enable this policy setting, you can prevent users from installing software on their systems or permit users to install only those programs offered by a system administrator. You can use the options in the Disable Windows Installer box to establish an installation setting.
# 
# --   The "Never" option indicates Windows Installer is fully enabled. Users can install and upgrade software. This is the default behavior for Windows Installer on Windows 2000 Professional, Windows XP Professional and Windows Vista when the policy is not configured.
# 
# --   The "For non-managed applications only" option permits users to install only those programs that a system administrator assigns (offers on the desktop) or publishes (adds them to Add or Remove Programs). This is the default behavior of Windows Installer on Windows Server 2003 family when the policy is not configured.
# 
# --   The "Always" option indicates that Windows Installer is disabled.
# 
# This policy setting affects Windows Installer only. It does not prevent users from using other methods to install and upgrade programs.
Turn off Windows Installer:
  lgpo.set:
  - name: DisableMSI
  - setting:
      DisableMSI: enum-placeholder
  - policy_class: Machine
