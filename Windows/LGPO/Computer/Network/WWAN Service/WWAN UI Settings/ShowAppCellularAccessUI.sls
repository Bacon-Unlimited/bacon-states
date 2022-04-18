# windows:SUPPORTED_Windows_10_0
#
# This policy setting configures the visibility of the link to the per-application cellular access control page in the cellular setting UX.
# 
# If this policy setting is enabled, a drop-down list box presenting possible values will be active.  Select "Hide" or "Show" to hide or show the link to the per-application cellular access control page.
# If this policy setting is disabled or is not configured, the link to the per-application cellular access control page is showed by default.
#       
Set Per-App Cellular Access UI Visibility:
  lgpo.set:
  - name: ShowAppCellularAccessUI
  - setting:
      ShowAppCellularAccessUI_Option: enum-placeholder
  - policy_class: Machine
