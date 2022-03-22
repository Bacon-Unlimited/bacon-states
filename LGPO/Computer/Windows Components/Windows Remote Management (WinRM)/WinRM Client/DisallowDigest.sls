# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to manage whether the Windows Remote Management (WinRM) client uses Digest authentication.
# 
# If you enable this policy setting, the WinRM client does not use Digest authentication.
# 
# If you disable or do not configure this policy setting, the WinRM client uses Digest authentication.
Disallow Digest authentication:
  lgpo.set:
  - name: DisallowDigest
  - setting: Enabled
  - policy_class: Machine
