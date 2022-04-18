# windows:SUPPORTED_Win2k
#
# This policy setting allows you to set the default display name for new Group Policy objects.
# 
# This setting allows you to specify the default name for new Group Policy objects created from policy compliant Group Policy Management tools including the Group Policy tab in Active Directory tools and the GPO browser.
# 
# The display name can contain environment variables and can be a maximum of 255 characters long.
# 
# If this setting is Disabled or Not Configured, the default display name of New Group Policy object is used.
Set default name for new Group Policy objects:
  lgpo.set:
  - name: NewGPODisplayName
  - setting:
      NewGPODisplayNameHeading: text-placeholder
  - policy_class: User
