# 301OrLater
#
# Enabling this policy allows you to edit the list of file types to exclude from indexing. The end user cannot modify this list. You should separate each extension type with a semicolon.
# 
# Note that limitations of Group Policy Object Editor require this list to be split across multiple values. Desktop Search combines all these into a single exclusion list.
# 
# When this policy is disabled or not configured, the user can edit the default list of excluded file types. If you enable and then disable this policy, the user's original list is restored.
# 
# If you want to specify an initial default list of excluded file types that users can change later, see the administration guide for information about how to set up the initial machine preference.
Prevent indexing of certain file types:
  lgpo.set:
  - name: ExcludedExtensionsMultiline
  - setting:
      ExcludedExtensionsMultiline_0: text-placeholder
      ExcludedExtensionsMultiline_1: text-placeholder
      ExcludedExtensionsMultiline_2: text-placeholder
      ExcludedExtensionsMultiline_3: text-placeholder
  - policy_class: Machine
