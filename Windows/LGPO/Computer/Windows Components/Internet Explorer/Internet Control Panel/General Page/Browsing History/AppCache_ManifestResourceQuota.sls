####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Control Panel\General Page\Browsing History\AppCache_ManifestResourceQuota.sls
#
# SUPPORTED WINDOWS OS
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
