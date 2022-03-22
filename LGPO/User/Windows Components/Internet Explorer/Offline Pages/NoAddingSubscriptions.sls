# SUPPORTED_IE5_6
#
# Prevents users from specifying that Web pages can be downloaded for viewing offline. When users make Web pages available for offline viewing, they can view the content when their computer is not connected to the Internet.
# 
# If you enable this policy, users cannot add new schedules for downloading offline content. The Make Available Offline check box will be dimmed in the Add Favorite dialog box.
# 
# If you disable this policy or do not configure it, users can add new offline content schedules.
# 
# This policy is intended for organizations that are concerned about server load for downloading content.
# 
# The "Hide Favorites menu" policy (located in User Configuration\Administrative Templates\Windows Components\Internet Explorer) takes precedence over this policy. If it is enabled, this policy is ignored.
Disable adding schedules for offline pages:
  lgpo.set:
  - name: NoAddingSubscriptions
  - setting: Enabled
  - policy_class: User
