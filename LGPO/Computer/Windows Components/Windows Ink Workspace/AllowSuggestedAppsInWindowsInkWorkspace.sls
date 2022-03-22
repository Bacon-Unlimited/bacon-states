# SUPPORTED_WIN10_RS1
#
# Allow suggested apps in Windows Ink Workspace
Allow suggested apps in Windows Ink Workspace:
  lgpo.set:
  - name: AllowSuggestedAppsInWindowsInkWorkspace
  - setting: Enabled
  - policy_class: Machine
