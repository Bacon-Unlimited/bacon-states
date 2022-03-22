# windows:SUPPORTED_Windows_10_0
#
# 
#         This policy setting determines whether Windows is allowed to download fonts and font catalog data from an online font provider.
# 
#         If you enable this policy setting, Windows periodically queries an online font provider to determine whether a new font catalog is available. Windows may also download font data if needed to format or render text.
# 
#         If you disable this policy setting, Windows does not connect to an online font provider and only enumerates locally-installed fonts.
# 
#         If you do not configure this policy setting, the default behavior depends on the Windows edition. Changes to this policy take effect on reboot.
#       
Enable Font Providers:
  lgpo.set:
  - name: EnableFontProviders
  - setting: Enabled
  - policy_class: Machine
