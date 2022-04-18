# windows:SUPPORTED_Windows_10_0
#
# Enabling this policy will automatically download updates, even over metered data connections (charges may apply)
Allow updates to be downloaded automatically over metered connections:
  lgpo.set:
  - name: AllowAutoWindowsUpdateDownloadOverMeteredNetwork
  - setting: Enabled
  - policy_class: Machine
