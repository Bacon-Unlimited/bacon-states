# SUPPORTED_IE8
#
# This policy setting determines whether Internet Explorer saves log information for ActiveX controls.
# 
# If you enable this policy setting, Internet Explorer logs ActiveX control information (including the source URI that loaded the control and whether it was blocked) to a local file.
# 
# If you disable or don't configure this policy setting, Internet Explorer won't log ActiveX control information.
# 
# Note that you can turn this policy setting on or off regardless of the "Turn off blocking of outdated ActiveX controls for Internet Explorer" or "Turn off blocking of outdated ActiveX controls for Internet Explorer on specific domains" policy settings.
# 
# For more information, see "Outdated ActiveX Controls" in the Internet Explorer TechNet library.
Turn on ActiveX control logging in Internet Explorer:
  lgpo.set:
  - name: VerMgmtAuditModeEnable
  - setting: Enabled
  - policy_class: User
