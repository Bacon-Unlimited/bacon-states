# windows:SUPPORTED_Windows_10_0_NOSERVER_ENTERPRISE_EDUCATION
#
# This policy setting allows you to decide whether websites can load non-enterprise content in Microsoft Edge and Internet Explorer.
# 
# If you enable this setting, non-enterprise content embedded on enterprise sites are stopped from opening in Internet Explorer or Microsoft Edge outside of Microsoft Defender Application Guard.
# 
# If you disable or don't configure this setting, non-enterprise sites can open outside of the Microsoft Defender Application Guard container, directly in Internet Explorer and Microsoft Edge.
#         
Prevent enterprise websites from loading non-enterprise content in Microsoft Edge and Internet Explorer:
  lgpo.set:
  - name: AppHVSI_BlockNonEnterpriseContentConfig
  - setting: Enabled
  - policy_class: Machine
