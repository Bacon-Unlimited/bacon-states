# SUPPORTED_IE5_6
#
# Prevents content from being downloaded from Web sites that users have subscribed to.
# 
# When users make Web pages available for offline viewing, they can view content when their computer is not connected to the Internet.
# 
# If you enable this policy, content will not be downloaded from Web sites that users have subscribed to. However, synchronization with the Web pages will still occur to determine if any content has been updated since the last time the user synchronized with or visited the page.
# 
# If you disable this policy or do not configure it, content will not be prevented from being downloaded.
# 
# The "Disable downloading of site subscription content" policy and the "Hide Favorites menu" policy (located in User Configuration\Administrative Templates\Windows Components\Internet Explorer) take precedence over this policy. If either policy is enabled, this policy is ignored.
Disable downloading of site subscription content:
  lgpo.set:
  - name: NoSubscriptionContent
  - setting: Enabled
  - policy_class: User
