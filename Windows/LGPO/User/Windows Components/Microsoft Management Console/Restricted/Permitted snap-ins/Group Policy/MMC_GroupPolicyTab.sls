# windows:SUPPORTED_WindowsPreVista
#
# Permits or prohibits use of the Group Policy tab in property sheets for the Active Directory Users and Computers and Active Directory Sites and Services snap-ins.
# 
# If you enable this setting, the Group Policy tab is displayed in the property sheet for a site, domain, or organizational unit displayed by the Active Directory Users and Computers and Active Directory Sites and Services snap-ins. If you disable the setting, the Group Policy tab is not displayed in those snap-ins.
# 
# If this setting is not configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this tab is displayed.
# 
# --  If "Restrict users to the explicitly permitted list of snap-ins" is enabled, users will not have access to the Group Policy tab.
# 
#     To explicitly permit use of the Group Policy tab, enable this setting. If this setting is not configured (or disabled), the Group Policy tab is inaccessible.
# 
# --  If "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users will have access to the Group Policy tab.
# 
#     To explicitly prohibit use of the Group Policy tab, disable this setting. If this setting is not configured (or enabled), the Group Policy tab is accessible.
# 
# When the Group Policy tab is inaccessible, it does not appear in the site, domain, or organizational unit property sheets.
Group Policy tab for Active Directory Tools:
  lgpo.set:
  - name: MMC_GroupPolicyTab
  - setting: Enabled
  - policy_class: User
