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
# LOCATION: \Computer\Windows Components\Windows Installer\MSI_MaxPatchCacheSize.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_MSI30
#
# 
#         This policy controls the percentage of disk space available to the Windows Installer baseline file cache.
# 
#         The Windows Installer uses the baseline file cache to save baseline files modified by binary delta difference updates. The cache is used to retrieve the baseline file for future updates. The cache eliminates user prompts for source media when new updates are applied.
# 
#         If you enable this policy setting you can modify the maximum size of the Windows Installer baseline file cache.
# 
#         If you set the baseline cache size to 0, the Windows Installer will stop populating the baseline cache for new updates. The existing cached files will remain on disk and will be deleted when the product is removed.
# 
#         If you set the baseline cache to 100, the Windows Installer will use available free space for the baseline file cache.
# 
#         If you disable or do not configure this policy setting, the Windows Installer will uses a default value of 10 percent for the baseline file cache maximum size.
Control maximum size of baseline file cache:
  lgpo.set:
  - name: MSI_MaxPatchCacheSize
  - setting:
      MSI_MaxPatchCacheSize: decimal-placeholder
  - policy_class: Machine
