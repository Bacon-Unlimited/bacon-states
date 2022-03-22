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
