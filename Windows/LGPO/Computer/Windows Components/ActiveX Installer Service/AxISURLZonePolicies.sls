# windows:SUPPORTED_WindowsVista
#
# This policy setting controls the installation of ActiveX controls for sites in Trusted zone. 
# 
# If you enable this policy setting, ActiveX controls are installed according to the settings defined by this policy setting. 
#       
# If you disable or do not configure this policy setting, ActiveX controls prompt the user before installation. 
# 
# If the trusted site uses the HTTPS protocol, this policy setting can also control how ActiveX Installer Service responds to certificate errors. By default all HTTPS connections must supply a server certificate that passes all validation criteria. If you are aware that a trusted site has a certificate error but you want to trust it anyway you can select the certificate errors that you want to ignore. 
#     
# Note: This policy setting applies to all sites in Trusted zones.
# 
Establish ActiveX installation policy for sites in Trusted zones:
  lgpo.set:
  - name: AxISURLZonePolicies
  - setting:
      IgnoreInvalidCN: boolean-placeholder
      IgnoreInvalidCertDate: boolean-placeholder
      IgnoreUnknownCA: boolean-placeholder
      IgnoreWrongCertUsage: boolean-placeholder
      InstallSignedOCX: enum-placeholder
      InstallTrustedOCX: enum-placeholder
      InstallUnSignedOCX: enum-placeholder
  - policy_class: Machine
