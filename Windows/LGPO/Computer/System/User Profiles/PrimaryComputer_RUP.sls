# windows:SUPPORTED_Windows8
#
# This policy setting controls on a per-computer basis whether roaming profiles are downloaded on a user's primary computers only. This policy setting is useful to improve logon performance and to increase security for user data on computers where the user might not want to download private data, such as on a meeting room computer or on a computer in a remote office.
# 
# To designate a user's primary computers, an administrator must use management software or a script to add primary computer attributes to the user's account in Active Directory Domain Services (AD DS). This policy setting also requires the Windows Server 2012 version of the Active Directory schema to function.
# 
# If you enable this policy setting and the user has a roaming profile, the roaming profile is downloaded on the user's primary computer only.
# 
# If you disable or do not configure this policy setting and the user has a roaming profile, the roaming profile is downloaded on every computer that the user logs on to.
#       
Download roaming profiles on primary computers only:
  lgpo.set:
  - name: PrimaryComputer_RUP
  - setting: Enabled
  - policy_class: Machine
