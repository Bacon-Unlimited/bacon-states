# SUPPORTED_IE11
#
# This setting allows Internet Explorer mode to use the global window list that enables sharing state with other applications.
# The setting will take effect only when Internet Explorer 11 is disabled as a standalone browser.
# 
# If you enable this policy, Internet Explorer mode will use the global window list.
# 
# If you disable or dont configure this policy, Internet Explorer mode will continue to maintain a separate window list.
# 
# To learn more about Internet Explorer mode, see https://go.microsoft.com/fwlink/?linkid=2102921
# To learn more about disabling Internet Explorer 11 as a standalone browser, see https://go.microsoft.com/fwlink/?linkid=2168340
Enable global window list in Internet Explorer mode:
  lgpo.set:
  - name: EnableGlobalWindowListInIEMode
  - setting: Enabled
  - policy_class: Machine
