# windows:SUPPORTED_Windows8
#
# This policy removes the end-user notification for new application associations. These associations are based on file types (e.g. *.txt) or protocols (e.g. http:)
# 
# If this group policy is enabled, no notifications will be shown. If the group policy is not configured or disabled, notifications will be shown to the end user if a new application has been installed that can handle the file type or protocol association that was invoked.
Do not show the 'new application installed' notification:
  lgpo.set:
  - name: NoNewAppAlert
  - setting: Enabled
  - policy_class: Machine
