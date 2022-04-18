# SUPPORTED_INTERNET_BROWSER_RS4
#
# This policy setting lets you decide whether Microsoft Edge can automatically update the configuration data for the Books Library.
# 
# If you enable (default) or don't configure this setting, Microsoft Edge automatically updates the configuration data for the Books Library.
# 
# If you disable this setting, Microsoft Edge won't automatically download updated configuration data for the Books Library.
Allow configuration updates for the Books Library:
  lgpo.set:
  - name: AllowConfigurationUpdateForBooksLibrary
  - setting: Enabled
  - policy_class: User
