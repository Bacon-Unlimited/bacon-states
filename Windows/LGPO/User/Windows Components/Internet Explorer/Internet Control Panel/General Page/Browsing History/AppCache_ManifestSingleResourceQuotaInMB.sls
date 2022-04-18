# SUPPORTED_IE10
#
# This policy setting sets the maximum size for an individual resource file contained in a manifest file. The manifest file is used to create the application cache. If any file in the manifest exceeds the allowed size, Internet Explorer sends an error to the website. No notification will be displayed to the user. When you set this policy setting, you provide the resource size limit, in MB. The default is 50 MB.
# 
# If you enable this policy setting, Internet Explorer will allow the creation of application caches whose individual manifest file entries are less than or equal to the size set in this policy setting.
# 
# If you disable or do not configure this policy setting, Internet Explorer will use the default application cache individual resource size for all application caches resources. The default is 50 MB.
Set maximum application cache individual resource size:
  lgpo.set:
  - name: AppCache_ManifestSingleResourceQuotaInMB
  - setting:
      AppCache_ManifestSingleResourceQuotaInMBPart: decimal-placeholder
  - policy_class: User
