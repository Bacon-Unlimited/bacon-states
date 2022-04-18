# windows:SUPPORTED_Windows8
#
# This Group Policy Setting should be set on Windows clients  to enable access-denied assistance for all file types
Enable access-denied assistance on client for all file types:
  lgpo.set:
  - name: EnableShellAccessCheck
  - setting: Enabled
  - policy_class: Machine
