# SUPPORTED_IE10
#
# This policy setting sets file storage limits for application caches of websites that have been allowed to exceed their storage limit. The Set default storage limits for websites policy setting sets the data storage limits for application caches. If a domain exceeds the application cache storage limit for an individual domain, Internet Explorer sends an error to the website. No notification will be displayed to the user. This group policy sets the maximum file storage limit for domains that are trusted by users. When you set this policy setting, you provide the cache limit, in MB. The default is 50 MB.
# 
# If you enable this policy setting, Internet Explorer will allow trusted domains to store additional files in application caches, up to the limit set in this policy setting.
# 
# If you disable or do not configure this policy setting, Internet Explorer will use the default maximum storage limit for all application caches. The default is 50 MB.
Set application cache storage limits for individual domains:
  lgpo.set:
  - name: AppCache_MaxTrustedDomainLimitInMB
  - setting:
      AppCache_MaxTrustedDomainLimitInMBPart: decimal-placeholder
  - policy_class: User
