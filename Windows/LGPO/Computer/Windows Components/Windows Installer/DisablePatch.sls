# windows:SUPPORTED_Win2k
#
# This policy setting prevents users from using Windows Installer to install patches.
# 
# If you enable this policy setting, users are prevented from using Windows Installer to install patches. Patches are updates or upgrades that replace only those program files that have changed. Because patches can be easy vehicles for malicious programs, some installations prohibit their use.
# 
# Note: This policy setting applies only to installations that run in the user's security context.
# 
# If you disable or do not configure this policy setting, by default, users who are not system administrators cannot apply patches to installations that run with elevated system privileges, such as those offered on the desktop or in Add or Remove Programs.
# 
# Also, see the "Enable user to patch elevated products" policy setting.
Prevent users from using Windows Installer to install updates and upgrades:
  lgpo.set:
  - name: DisablePatch
  - setting: Enabled
  - policy_class: Machine
