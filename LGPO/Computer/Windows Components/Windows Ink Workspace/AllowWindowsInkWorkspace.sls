# SUPPORTED_WIN10_RS1
#
# Allow Windows Ink Workspace
Allow Windows Ink Workspace:
  lgpo.set:
  - name: AllowWindowsInkWorkspace
  - setting:
      AllowWindowsInkWorkspaceDropdown: enum-placeholder
  - policy_class: Machine
