# SUPPORTED_IE8
#
# This policy setting determines whether Internet Explorer blocks specific outdated ActiveX controls. Outdated ActiveX controls are never blocked in the Intranet Zone.
# 
# If you enable this policy setting, Internet Explorer stops blocking outdated ActiveX controls.
# 
# If you disable or don't configure this policy setting, Internet Explorer continues to block specific outdated ActiveX controls.
# 
# For more information, see "Outdated ActiveX Controls" in the Internet Explorer TechNet library.
Turn off blocking of outdated ActiveX controls for Internet Explorer:
  lgpo.set:
  - name: VerMgmtDisable
  - setting: Enabled
  - policy_class: User
