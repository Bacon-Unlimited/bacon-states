# windows:SUPPORTED_Windows_10_0_NOARM
#
# Enter the product and version as listed on the Windows Update target version page:
# 
#                         aka.ms/WindowsTargetVersioninfo
# 
# The device will request that Windows Update product and version in subsequent scans.
# 
# Entering a target product and clicking OK or Apply means I accept the Microsoft Software License Terms for it found at aka.ms/WindowsTargetVersioninfo. If an organization is licensing the software, I am authorized to bind the organization.
# 
# If you enter an invalid value, you will remain on your current version until you correct the values to a supported product and version.
Select the target Feature Update version:
  lgpo.set:
  - name: TargetReleaseVersion
  - setting:
      ProductVersionId: text-placeholder
      TargetReleaseVersionId: text-placeholder
  - policy_class: Machine
