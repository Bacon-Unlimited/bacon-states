# SUPPORTED_IE11
#
# This policy setting lets admins reset zoom to default for HTML dialogs in Internet Explorer mode.
# 
# If you enable this policy, the zoom of an HTML dialog in Internet Explorer mode will not get propagated from its parent page.
# 
# If you disable, or don't configure this policy, the zoom of an HTML dialog in Internet Explorer mode will be set based on the zoom of it's parent page.
# 
# For more information, see https://go.microsoft.com/fwlink/?linkid=2102115
Reset zoom to default for HTML dialogs in Internet Explorer mode:
  lgpo.set:
  - name: ResetZoomForDialogInIEMode
  - setting: Enabled
  - policy_class: Machine
