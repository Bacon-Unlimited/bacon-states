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
# LOCATION: \Computer\Network\Background Intelligent Transfer Service (BITS)\BITS_MaxCacheSize.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting limits the maximum amount of disk space that can be used for the BITS peer cache, as a percentage of the total system disk size. BITS will add files to the peer cache and make those files available to peers until the cache content reaches the specified cache size. By default, BITS will use 1 percent of the total system disk for the peercache.
# 
#           If you enable this policy setting, you can enter the percentage of disk space to be used for the BITS peer cache. You can enter a value between 1 percent and 80 percent.
# 
#           If you disable or do not configure this policy setting, the default size of the BITS peer cache is 1 percent of the total system disk size.
# 
#           Note: This policy setting has no effect if the "Allow BITS peer caching" setting is disabled or not configured.
Limit the BITS Peercache size:
  lgpo.set:
  - name: BITS_MaxCacheSize
  - setting:
      BITS_MaxSize: decimal-placeholder
  - policy_class: Machine
