# windows:SUPPORTED_WindowsXPSP2_Or_WindowsNET
#
# This policy setting specifies whether Windows should download a list of providers for the web publishing and online ordering wizards.
# 
# These wizards allow users to select from a list of companies that provide services such as online storage and photographic printing. By default, Windows displays providers downloaded from a Windows website in addition to providers specified in the registry.
# 
# If you enable this policy setting, Windows does not download providers, and only the service providers that are cached in the local registry are displayed.
# 
# If you disable or do not configure this policy setting, a list of providers are downloaded when the user uses the web publishing or online ordering wizards.
# 
# See the documentation for the web publishing and online ordering wizards for more information, including details on specifying service providers in the registry.
Turn off Internet download for Web publishing and online ordering wizards:
  lgpo.set:
  - name: ShellPreventWPWDownload_1
  - setting: Enabled
  - policy_class: User
