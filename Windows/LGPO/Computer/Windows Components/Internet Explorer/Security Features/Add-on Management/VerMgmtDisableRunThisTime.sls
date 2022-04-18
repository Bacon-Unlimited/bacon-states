# SUPPORTED_IE8
#
# This policy setting allows you to stop users from seeing the "Run this time" button and from running specific outdated ActiveX controls in Internet Explorer.
# 
# If you enable this policy setting, users won't see the "Run this time" button on the warning message that appears when Internet Explorer blocks an outdated ActiveX control.
# 
# If you disable or don't configure this policy setting, users will see the "Run this time" button on the warning message that appears when Internet Explorer blocks an outdated ActiveX control. Clicking this button lets the user run the outdated ActiveX control once.
# 
# For more information, see "Outdated ActiveX Controls" in the Internet Explorer TechNet library.
'Remove "Run this time" button for outdated ActiveX controls in Internet Explorer ':
  lgpo.set:
  - name: VerMgmtDisableRunThisTime
  - setting: Enabled
  - policy_class: Machine
