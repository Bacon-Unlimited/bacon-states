# SUPPORTED_IE5_6
#
# Makes the Customize button in the Search Assistant appear dimmed.
# 
# The Search Assistant is a tool that appears in the Search bar to help users search the Internet.
# 
# If you enable this policy, users cannot change their Search Assistant settings, such as setting default search engines for specific tasks.
# 
# If you disable this policy or do not configure it, users can change their settings for the Search Assistant.
# 
# This policy is designed to help administrators maintain consistent settings for searching across an organization.
'Search: Disable Search Customization':
  lgpo.set:
  - name: Search_NoSearchCustomization
  - setting: Enabled
  - policy_class: User
