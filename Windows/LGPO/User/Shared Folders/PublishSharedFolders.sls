# windows:SUPPORTED_WindowsXP
#
# This policy setting determines whether the user can publish shared folders in Active Directory Domain Services (AD DS).
# 
# If you enable or do not configure this policy setting, users can use the "Publish in Active Directory" option in the Shared Folders snap-in to publish shared folders in AD DS.
# 
# If you disable this policy setting, users cannot publish shared folders in AD DS, and the "Publish in Active Directory" option is disabled. Note: The default is to allow shared folders to be published when this setting is not configured.
Allow shared folders to be published:
  lgpo.set:
  - name: PublishSharedFolders
  - setting: Enabled
  - policy_class: User
