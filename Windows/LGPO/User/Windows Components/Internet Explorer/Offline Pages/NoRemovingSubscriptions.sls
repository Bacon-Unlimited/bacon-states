# SUPPORTED_IE5_6
#
# Prevents users from clearing the preconfigured settings for Web pages to be downloaded for offline viewing.
# 
# When users make Web pages available for offline viewing, they can view content when their computer is not connected to the Internet.
# 
# If you enable this policy, the Make Available Offline check box in the Organize Favorites Favorite dialog box and the Make This Page Available Offline check box will be selected but dimmed. To display the Make This Page Available Offline check box, users click the Tools menu, click Synchronize, and then click the Properties button.
# 
# If you disable this policy or do not configure it, users can remove the preconfigured settings for pages to be downloaded for offline viewing.
# 
# This policy is intended for organizations that are concerned about server load for downloading content.
# 
# The "Hide Favorites menu" policy (located in User Configuration\Administrative Templates\Windows Components\Internet Explorer) takes precedence over this policy. If it is enabled, this policy is ignored.
Disable removing schedules for offline pages:
  lgpo.set:
  - name: NoRemovingSubscriptions
  - setting: Enabled
  - policy_class: User
