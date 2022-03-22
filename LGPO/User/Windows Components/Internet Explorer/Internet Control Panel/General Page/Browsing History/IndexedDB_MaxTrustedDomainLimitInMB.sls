# SUPPORTED_IE10
#
# This policy setting sets data storage limits for indexed databases of websites that have been allowed to exceed their storage limit. The “Set default storage limits for websites” policy setting sets the data storage limits for indexed databases. If a domain exceeds the indexed database storage limit for an individual domain, Internet Explorer sends an error to the website. No notification is sent to the user. This group policy sets the maximum data storage limit for domains that are trusted by users. When you set this policy setting, you provide the cache limit, in MB. The default is 500 MB.
# 
# If you enable this policy setting, Internet Explorer will allow trusted domains to store additional data in indexed databases, up to the limit set in this group policy.
# 
# If you disable or do not configure this policy setting, Internet Explorer will use the default maximum storage limit for all indexed databases. The default is 500 MB.
Set indexed database storage limits for individual domains:
  lgpo.set:
  - name: IndexedDB_MaxTrustedDomainLimitInMB
  - setting:
      IndexedDB_MaxTrustedDomainLimitInMBPart: decimal-placeholder
  - policy_class: User
