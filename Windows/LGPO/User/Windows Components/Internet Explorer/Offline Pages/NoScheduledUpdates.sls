# SUPPORTED_IE5_6
#
# Disables existing schedules for downloading Web pages for offline viewing.
# 
# When users make Web pages available for offline viewing, they can view content when their computer is not connected to the Internet.
# 
# If you enable this policy, the check boxes for schedules on the Schedule tab of the Web page properties are cleared and users cannot select them. To display this tab, users click the Tools menu, click Synchronize, select a Web page, click the Properties button, and then click the Schedule tab.
# 
# If you disable this policy, then Web pages can be updated on the schedules specified on the Schedule tab.
# 
# This policy is intended for organizations that are concerned about server load for downloading content.
# 
# The "Hide Favorites menu" policy (located in User Configuration\Administrative Templates\Windows Components\Internet Explorer) takes precedence over this policy. If it is enabled, this policy is ignored.
Disable all scheduled offline pages:
  lgpo.set:
  - name: NoScheduledUpdates
  - setting: Enabled
  - policy_class: User
