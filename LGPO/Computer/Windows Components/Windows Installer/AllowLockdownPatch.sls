# windows:SUPPORTED_Win2k
#
# This policy setting allows users to patch elevated products.
# 
# If you enable this policy setting, all users are permitted to install patches, even when the installation program is running with elevated system privileges. Patches are updates or upgrades that replace only those program files that have changed. Because patches can easily be vehicles for malicious programs, some installations prohibit their use.
# 
# If you disable or do not configure this policy setting, by default, only system administrators can apply patches during installations with elevated privileges, such as installations offered on the desktop or displayed in Add or Remove Programs.
# 
# This policy setting does not affect installations that run in the user's security context. By default, users can install patches to programs that run in their own security context. Also, see the "Prohibit patching" policy setting.
Allow users to patch elevated products:
  lgpo.set:
  - name: AllowLockdownPatch
  - setting: Enabled
  - policy_class: Machine
