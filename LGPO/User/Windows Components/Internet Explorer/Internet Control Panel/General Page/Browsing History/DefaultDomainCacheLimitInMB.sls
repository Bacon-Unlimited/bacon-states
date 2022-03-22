# SUPPORTED_IE10
#
# This policy setting sets data storage limits for indexed database and application caches for individual websites. When you set this policy setting, you provide the cache limit, in MB.
# 
# If you enable this policy setting, Internet Explorer displays a notification when a website exceeds the configured storage limit.
# 
# If you disable or do not configure this policy setting, users can set default data storage limits for indexed databases and application caches.
Set default storage limits for websites:
  lgpo.set:
  - name: DefaultDomainCacheLimitInMB
  - setting:
      DefaultDomainCacheLimitInMBPart: decimal-placeholder
  - policy_class: User
