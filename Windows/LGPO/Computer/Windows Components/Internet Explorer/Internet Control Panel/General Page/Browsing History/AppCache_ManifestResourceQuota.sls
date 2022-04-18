# SUPPORTED_IE10
#
# This policy setting sets the maximum number of resource entries that can be specified in a manifest file associated with an application cache. If the manifest associated with an application cache exceeds the number of resources allowed, including the page that referenced the manifest, Internet Explorer sends an error to the website. No notification will be displayed to the user. When you set this policy setting, you provide the resource limit as a number. The default is 1000 resources.
# 
# If you enable this policy setting, Internet Explorer will allow the creation of application caches whose manifest file contains the number of resources, including the page that referenced the manifest, that are less than or equal to the limit set in this policy setting.
# 
# If you disable or do not configure this policy setting, Internet Explorer will use the default maximum application cache resource list size for all application caches. The default is 1000 resources.
Set maximum application cache resource list size:
  lgpo.set:
  - name: AppCache_ManifestResourceQuota
  - setting:
      AppCache_ManifestResourceQuotaPart: decimal-placeholder
  - policy_class: Machine
