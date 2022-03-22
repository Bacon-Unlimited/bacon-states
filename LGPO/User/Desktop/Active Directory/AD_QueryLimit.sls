# windows:SUPPORTED_Win2k
#
# Specifies the maximum number of objects the system displays in response to a command to browse or search Active Directory. This setting affects all browse displays associated with Active Directory, such as those in Local Users and Groups, Active Directory Users and Computers, and dialog boxes used to set permissions for user or group objects in Active Directory.
# 
# If you enable this setting, you can use the "Number of objects returned" box to limit returns from an Active Directory search.
# 
# If you disable this setting or do not configure it, the system displays up to 10,000 objects. This consumes approximately 2 MB of memory or disk space.
# 
# This setting is designed to protect the network and the domain controller from the effect of expansive searches.
Maximum size of Active Directory searches:
  lgpo.set:
  - name: AD_QueryLimit
  - setting:
      AD_QueryLimit_Box: decimal-placeholder
  - policy_class: User
