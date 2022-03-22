# SUPPORTED_INTERNET_BROWSER_RS3
#
# This policy setting helps you to decide whether to make the Books tab visible, regardless of a device's country or region setting, as configured in the Country or region area of Windows settings.
# 
# If you enable this setting, Microsoft Edge shows the Books Library, regardless of the device's country or region.
# 
# If you disable or don't configure this setting, Microsoft Edge shows the Books Library only in countries or regions where it's supported.
Always show the Books Library in Microsoft Edge:
  lgpo.set:
  - name: AlwaysEnableBooksLibrary
  - setting: Enabled
  - policy_class: User
