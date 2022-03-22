# SUPPORTED_IE8
#
# This policy setting allows you to prevent the installation of ActiveX controls on a per-user basis.
# 
# If you enable this policy setting, ActiveX controls cannot be installed on a per-user basis.
# 
# If you disable or do not configure this policy setting, ActiveX controls can be installed on a per-user basis.
Prevent per-user installation of ActiveX controls:
  lgpo.set:
  - name: DisablePerUserActiveXInstall
  - setting: Enabled
  - policy_class: Machine
