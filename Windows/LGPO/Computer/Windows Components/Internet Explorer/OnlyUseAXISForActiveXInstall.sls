# SUPPORTED_IE8
#
# This policy setting allows you to specify how ActiveX controls are installed.
# 
# If you enable this policy setting, ActiveX controls are installed only if the ActiveX Installer Service is present and has been configured to allow the installation of ActiveX controls.
# 
# If you disable or do not configure this policy setting, ActiveX controls, including per-user controls, are installed through the standard installation process.
Specify use of ActiveX Installer Service for installation of ActiveX controls:
  lgpo.set:
  - name: OnlyUseAXISForActiveXInstall
  - setting: Enabled
  - policy_class: Machine
