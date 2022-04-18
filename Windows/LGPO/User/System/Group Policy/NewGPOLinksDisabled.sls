# windows:SUPPORTED_Win2k
#
# This policy setting allows you to create new Group Policy object links in the disabled state.
# 
# If you enable this setting, you can create all new Group Policy object links in the disabled state by default. After you configure and test the new object links by using a policy compliant Group Policy management tool such as  Active Directory Users and Computers or Active Directory Sites and Services, you can enable the object links for use on the system.
# 
# If you disable this setting or do not configure it, new Group Policy object links are created in the enabled state. If you do not want them to be effective until they are configured and tested, you must disable the object link.
Create new Group Policy Object links disabled by default:
  lgpo.set:
  - name: NewGPOLinksDisabled
  - setting: Enabled
  - policy_class: User
