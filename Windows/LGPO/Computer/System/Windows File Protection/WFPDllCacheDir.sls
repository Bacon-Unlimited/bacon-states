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
# LOCATION: \Computer\System\Windows File Protection\WFPDllCacheDir.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# This policy setting specifies an alternate location for the Windows File Protection cache.
# 
# If you enable this policy setting, enter the fully qualified local path to the new location in the "Cache file path" box.
# 
# If you disable this setting or do not configure it, the Windows File Protection cache is located in the %Systemroot%\System32\Dllcache directory.
# 
# Note: Do not put the cache on a network shared directory.
Specify Windows File Protection cache location:
  lgpo.set:
  - name: WFPDllCacheDir
  - setting:
      WFPDllCacheDirBox: text-placeholder
  - policy_class: Machine
