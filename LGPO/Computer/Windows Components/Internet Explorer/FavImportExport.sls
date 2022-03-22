# SUPPORTED_IE5
#
# This policy settings disables the Import/Export Settings wizard. This wizard allows you to import settings from another browser, import settings from a file, or export settings to a file. Importing settings from another browser allows the user to import favorites and feeds from other browsers. Importing settings from a file allows the user to import favorites, feeds and cookies from a file. Exporting settings to a file allows the user to export favorites, feeds and cookies to a file.
# 
# If you enable this policy setting, the user will not be able to use the Import/Export Settings wizard.
# 
# If you disable or do not configure this policy setting, the user will be able to use the Import/Export Settings wizard.
Disable Import/Export Settings wizard:
  lgpo.set:
  - name: FavImportExport
  - setting: Enabled
  - policy_class: Machine
