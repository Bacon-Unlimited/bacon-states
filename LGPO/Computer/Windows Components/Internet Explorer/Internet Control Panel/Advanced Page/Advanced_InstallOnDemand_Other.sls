# SUPPORTED_IE6SRVSP1ONLY
#
# This policy setting allows you to manage whether users can download and install self-installing program files (non-Internet Explorer components) that are registered with Internet Explorer (such as Macromedia and Java) that are required in order to view web pages as intended.
# 
# If you enable this policy setting, non-Internet Explorer components will be automatically installed as necessary.
# 
# If you disable this policy setting, users will be prompted when non-Internet Explorer components would be installed.
# 
# If you do not configure this policy setting, non-Internet Explorer components will be automatically installed as necessary.
Allow Install On Demand (except Internet Explorer):
  lgpo.set:
  - name: Advanced_InstallOnDemand_Other
  - setting: Enabled
  - policy_class: Machine
