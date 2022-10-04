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
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Control Panel\General Page\Browsing History\AppCache_ManifestSingleResourceQuotaInMB.sls
#
# SUPPORTED WINDOWS OS
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
  - policy_class: Machine
