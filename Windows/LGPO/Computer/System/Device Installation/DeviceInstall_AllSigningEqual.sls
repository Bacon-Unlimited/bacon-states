# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to determine how drivers signed by a Microsoft Windows Publisher certificate are ranked with drivers signed by other valid Authenticode signatures during the driver selection and installation process. Regardless of this policy setting, a signed driver is still preferred over a driver that is not signed at all.
# 
# If you enable or do not configure this policy setting, drivers that are signed by a Microsoft Windows Publisher certificate and drivers that are signed by other Authenticode certificates are prioritized equally during the driver selection process. Selection is based on other criteria, such as version number or when the driver was created. 
# 
# If you disable this policy setting, drivers that are signed by a Microsoft Windows Publisher certificate are selected for installation over drivers that are signed by other Authenticode certificates.
Prioritize all digitally signed drivers equally during the driver ranking and selection process:
  lgpo.set:
  - name: DeviceInstall_AllSigningEqual
  - setting: Enabled
  - policy_class: Machine
