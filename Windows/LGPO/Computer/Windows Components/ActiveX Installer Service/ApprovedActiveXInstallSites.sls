# windows:SUPPORTED_WindowsVista
#
# This policy setting determines which ActiveX installation sites standard users in your organization can use to install ActiveX controls on their computers. When this setting is enabled, the administrator can create a list of approved Activex Install sites specified by host URL. 
# 
# If you enable this setting, the administrator can create a list of approved ActiveX Install sites specified by host URL. 
#       
# If you disable or do not configure this policy setting, ActiveX controls prompt the user for administrative credentials before installation. 
# 
# Note: Wild card characters cannot be used when specifying the host URLs.
# 
Approved Installation Sites for ActiveX Controls:
  lgpo.set:
  - name: ApprovedActiveXInstallSites
  - setting:
      ApprovedActiveXInstallSiteslist:
      - placeholder1
      - placeholder2
  - policy_class: Machine
