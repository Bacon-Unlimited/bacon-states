####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \User\Windows Components\Microsoft Management Console\Restricted\Permitted snap-ins\Group Policy\MMC_GroupPolicyTab.sls
#
# SUPPORTED WINDOWS OS
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
