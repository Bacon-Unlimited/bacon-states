# windows:SUPPORTED_WindowsPreVista
#
# Enables Active Desktop and prevents users from disabling it.
# 
# This setting prevents users from trying to enable or disable Active Desktop while a policy controls it.
# 
# If you disable this setting or do not configure it, Active Desktop is disabled by default, but users can enable it.
# 
# Note: If both the "Enable Active Desktop" setting and the "Disable Active Desktop" setting are enabled, the "Disable Active Desktop" setting is ignored.  If the "Turn on Classic Shell" setting ( in User Configuration\Administrative Templates\Windows Components\Windows Explorer) is enabled, Active Desktop is disabled, and both of these policies are ignored.
Enable Active Desktop:
  lgpo.set:
  - name: ForceActiveDesktopOn
  - setting: Enabled
  - policy_class: User
