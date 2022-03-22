# windows:SUPPORTED_Windows_10_0_NOARM
#
# Enables automatic cleanup of appv packages that were added after Windows10 anniversary release.
Enable automatic cleanup of unused appv packages:
  lgpo.set:
  - name: PackageManagement_AutoCleanupEnable
  - setting: Enabled
  - policy_class: Machine
