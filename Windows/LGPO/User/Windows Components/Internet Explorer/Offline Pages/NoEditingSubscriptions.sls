# SUPPORTED_IE5_6
#
# Prevents users from editing an existing schedule for downloading Web pages for offline viewing.
# 
# When users make Web pages available for offline viewing, they can view content when their computer is not connected to the Internet.
# 
# If you enable this policy, users cannot display the schedule properties of pages that have been set up for offline viewing. If users click the Tools menu, click Synchronize, select a Web page, and then click the Properties button, no properties are displayed. Users do not receive an alert stating that the command is unavailable.
# 
# If you disable this policy or do not configure it, users can edit an existing schedule for downloading Web content for offline viewing.
# 
# This policy is intended for organizations that are concerned about server load for downloading content.
# 
# The "Hide Favorites menu" policy (located in User Configuration\Administrative Templates\Windows Components\Internet Explorer) takes precedence over this policy. If it is enabled, this policy is ignored.
Disable editing schedules for offline pages:
  lgpo.set:
  - name: NoEditingSubscriptions
  - setting: Enabled
  - policy_class: User
