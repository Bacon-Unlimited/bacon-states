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
# LOCATION: \Computer\System\Windows File Protection\WFPQuota.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# This policy setting specifies the maximum amount of disk space that can be used for the Windows File Protection file cache.
# 
# Windows File Protection adds protected files to the cache until the cache content reaches the quota. If the quota is greater than 50 MB, Windows File Protection adds other important Windows XP files to the cache until the cache size reaches the quota.
# 
# If you enable this policy setting, enter the maximum amount of disk space to be used (in MB). To indicate that the cache size is unlimited, select "4294967295" as the maximum amount of disk space.
# 
# If you disable this policy setting or do not configure it, the default value is set to 50 MB on Windows XP Professional and is unlimited (4294967295 MB) on Windows Server 2003.
Limit Windows File Protection cache size:
  lgpo.set:
  - name: WFPQuota
  - setting:
      WFPQuota_Size: decimal-placeholder
  - policy_class: Machine
