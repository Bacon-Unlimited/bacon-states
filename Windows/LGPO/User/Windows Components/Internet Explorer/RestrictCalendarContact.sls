# SUPPORTED_IE5_NONVISTA
#
# Prevents users from changing the default programs for managing schedules and contacts.
# 
# If you enable this policy, the Calendar and Contact combo boxes appear dimmed in the Internet Programs area. To display these options, users open the Internet Options dialog box, and then click the Programs tab.
# 
# If you disable this policy or do not configure it, users can determine which programs to use for managing schedules and contacts, if programs that perform these tasks are installed.
# 
# This "Disable the Programs Page" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel) takes precedence over this policy. If it is enabled, this policy is ignored.
Disable changing Calendar and Contact settings:
  lgpo.set:
  - name: RestrictCalendarContact
  - setting: Enabled
  - policy_class: User
