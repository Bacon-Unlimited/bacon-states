# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether applications may be run and files may be downloaded from an IFRAME reference in the HTML of the pages in this zone.
# 
# If you enable this policy setting, users can run applications and download files from IFRAMEs on the pages in this zone without user intervention. If you select Prompt in the drop-down box, users are queried to choose whether to run applications and download files from IFRAMEs on the pages in this zone.
# 
# If you disable this policy setting, users are prevented from running applications and downloading files from IFRAMEs on the pages in this zone.
# 
# If you do not configure this policy setting, users are queried to choose whether to run applications and download files from IFRAMEs on the pages in this zone.
Launching applications and files in an IFRAME:
  lgpo.set:
  - name: IZ_PolicyLaunchAppsAndFilesInIFRAME_3
  - setting:
      IZ_Partname1804: enum-placeholder
  - policy_class: Machine
