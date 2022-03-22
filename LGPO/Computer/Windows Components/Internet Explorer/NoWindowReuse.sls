# SUPPORTED_IE7
#
# This policy setting allows you to configure how windows open in Internet Explorer when the user clicks links from other applications.
# 
# If you enable this policy setting, the user cannot configure how windows open in Internet Explorer when he or she clicks links from other applications. You must specify one of the following:
#     • Open in an existing Internet Explorer window. If tabbed browsing is enabled, a new tab is created in this scenario.
#     • Open a new Internet Explorer window.
# 
# If you disable or do not configure this policy setting, the user can configure how windows open when he or she clicks links from other applications.
Prevent configuration of how windows open:
  lgpo.set:
  - name: NoWindowReuse
  - setting:
      SelectWindowReuse: enum-placeholder
  - policy_class: Machine
