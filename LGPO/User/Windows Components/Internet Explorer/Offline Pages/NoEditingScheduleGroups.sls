# SUPPORTED_IE5_6
#
# Prevents users from adding, editing, or removing schedules for offline viewing of Web pages and groups of Web pages that users have subscribed to.
# 
# A subscription group is a favorite Web page plus the Web pages it links to.
# 
# If you enable this policy, the Add, Remove, and Edit buttons on the Schedule tab in the Web page Properties dialog box are dimmed. To display this tab, users click the Tools menu, click Synchronize, select a Web page, click the Properties button, and then click the Schedule tab.
# 
# If you disable this policy or do not configure it, users can add, remove, and edit schedules for Web sites and groups of Web sites.
# 
# The "Disable editing schedules for offline pages" policy and the "Hide Favorites menu" policy (located in User Configuration\Administrative Templates\Windows Components\Internet Explorer) take precedence over this policy. If either policy is enabled, this policy is ignored.
Disable editing and creating of schedule groups:
  lgpo.set:
  - name: NoEditingScheduleGroups
  - setting: Enabled
  - policy_class: User
