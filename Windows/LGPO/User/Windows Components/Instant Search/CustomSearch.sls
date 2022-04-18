# windows:SUPPORTED_WindowsVista
#
# Set up the menu name and URL for the custom Internet search provider.
# 
# If you enable this setting, the specified menu name and URL will be used for Internet searches.
# 
# If you disable or not configure this setting, the default Internet search provider will be used.
Custom Instant Search Internet search provider:
  lgpo.set:
  - name: CustomSearch
  - setting:
      CustomSearch_NamePrompt: text-placeholder
      CustomSearch_URLPrompt: text-placeholder
  - policy_class: User
