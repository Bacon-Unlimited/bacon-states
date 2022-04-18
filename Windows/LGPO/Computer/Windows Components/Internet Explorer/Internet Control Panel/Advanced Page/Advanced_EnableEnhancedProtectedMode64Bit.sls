# SUPPORTED_IE11
#
# This policy setting determines whether Internet Explorer 11 uses 64-bit processes (for greater security) or 32-bit processes (for greater compatibility) when running in Enhanced Protected Mode on 64-bit versions of Windows.
# 
# Important: Some ActiveX controls and toolbars may not be available when 64-bit processes are used.
# 
# If you enable this policy setting, Internet Explorer 11 will use 64-bit tab processes when running in Enhanced Protected Mode on 64-bit versions of Windows.
# 
# If you disable this policy setting, Internet Explorer 11 will use 32-bit tab processes when running in Enhanced Protected Mode on 64-bit versions of Windows.
# 
# If you don't configure this policy setting, users can turn this feature on or off using Internet Explorer settings. This feature is turned off by default.
Turn on 64-bit tab processes when running in Enhanced Protected Mode on 64-bit versions of Windows:
  lgpo.set:
  - name: Advanced_EnableEnhancedProtectedMode64Bit
  - setting: Enabled
  - policy_class: Machine
