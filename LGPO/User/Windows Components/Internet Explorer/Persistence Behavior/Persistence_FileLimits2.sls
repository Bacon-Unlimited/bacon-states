# SUPPORTED_IE5
#
# Limits the amount of storage that a page or site using the DHTML Persistence behavior can use for the Trusted Sites security zone.
# 
# If you enable this policy, you can specify the persistence storage amount per domain or per document for this security zone.
# 
# If you disable this policy or do not configure it, you cannot set this limit.
# 
# Note: This setting does not appear in the user interface.
File size limits for Trusted Sites zone:
  lgpo.set:
  - name: Persistence_FileLimits2
  - setting:
      FileLimits_Document2: decimal-placeholder
      FileLimits_Domain2: decimal-placeholder
  - policy_class: User
