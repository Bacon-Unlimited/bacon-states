# SUPPORTED_IE10
#
# This policy setting sets the number of days an inactive application cache will exist before it is removed. If the application cache is used before the expiration time limit, it will not be automatically removed. When you set this policy setting, you provide the expiration time limit in days.
# 
# If you enable this policy setting, Internet Explorer will remove application caches that haven't been used within the timeframe set in this policy setting.
# 
# If you disable or do not configure this policy setting, Internet Explorer will use the default application cache expiration time limit for all application caches. The default is 30 days.
Set application caches expiration time limit for individual domains:
  lgpo.set:
  - name: AppCache_GarbageCollectionThresholdInDays
  - setting:
      AppCache_GarbageCollectionThresholdInDaysPart: decimal-placeholder
  - policy_class: User
