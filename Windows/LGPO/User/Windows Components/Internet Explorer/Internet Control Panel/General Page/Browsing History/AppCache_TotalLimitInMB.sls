# SUPPORTED_IE10
#
# This policy setting sets the file storage limit for all combined application caches for a user. When you set this policy setting, you provide the storage limit in MB. When the limit is reached, Internet Explorer notifies the user, and the user must delete application caches before an updated one can be saved on their computer. The default maximum storage limit for all application caches is 1 GB.
# 
# If you enable this policy setting, you can set the maximum storage limit for all application caches. The default is 1 GB.
# 
# If you disable or do not configure this policy setting, Internet Explorer will use the default maximum storage limit for all application caches. The default is 1 GB.
Set maximum application caches storage limit for all domains:
  lgpo.set:
  - name: AppCache_TotalLimitInMB
  - setting:
      AppCache_TotalLimitInMBPart: decimal-placeholder
  - policy_class: User
