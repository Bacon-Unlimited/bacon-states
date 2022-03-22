# windows:SUPPORTED_Windows8
#
# This policy setting specifies whether BranchCache-capable client computers operate in a downgraded mode in order to maintain compatibility with previous versions of BranchCache.  If client computers do not use the same BranchCache version, cache efficiency might be reduced because client computers that are using different versions of BranchCache might store cache data in incompatible formats.
# 
# If you enable this policy setting, all clients use the version of BranchCache that you specify in "Select from the following versions."
# 
# If you do not configure this setting, all clients will use the version of BranchCache that matches their operating system.
# 
# Policy configuration
# 
# Select one of the following:
# 
# - Not Configured. With this selection, this policy setting is not applied to client computers, and the clients run the version of BranchCache that is included with their operating system.
# 
# - Enabled. With this selection, this policy setting is applied to client computers based on the value of the option setting "Select from the following versions" that you specify.
# 
# - Disabled. With this selection, this policy setting is not applied to client computers, and the clients run the version of BranchCache that is included with their operating system.
# 
# In circumstances where this setting is enabled, you can also select and configure the following option:
# 
# Select from the following versions
# 
# - Windows Vista with BITS 4.0 installed, Windows 7, or Windows Server 2008 R2. If you select this version, later versions of Windows run the version of BranchCache that is included in these operating systems rather than later versions of BranchCache.
# 
# - Windows 8. If you select this version, Windows 8 will run the version of BranchCache that is included in the operating system.
#             
Configure Client BranchCache Version Support:
  lgpo.set:
  - name: SetDowngrading
  - setting:
      Downgrading_Version: enum-placeholder
  - policy_class: Machine
