# windows:SUPPORTED_Windows7
#
# This policy setting allows you to turn off Windows Libraries features that need indexed file metadata to function properly.  If you enable this policy, some Windows Libraries features will be turned off to better handle included folders that have been redirected to non-indexed network locations.
# Setting this policy will:
#     * Disable all Arrangement views except for "By Folder"
#     * Disable all Search filter suggestions other than "Date Modified" and "Size"
#     * Disable view of file content snippets in Content mode when search results are returned
#     * Disable ability to stack in the Context menu and Column headers
#     * Exclude Libraries from the scope of Start search
# This policy will not enable users to add unsupported locations to Libraries.
# 
# If you enable this policy, Windows Libraries features that rely on indexed file data will be disabled.
# If you disable or do not configure this policy, all default Windows Libraries features will be enabled. 
Turn off Windows Libraries features that rely on indexed file data:
  lgpo.set:
  - name: DisableIndexedLibraryExperience
  - setting: Enabled
  - policy_class: User
