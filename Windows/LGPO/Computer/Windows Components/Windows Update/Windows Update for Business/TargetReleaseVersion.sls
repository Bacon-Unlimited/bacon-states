####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \Computer\Windows Components\Windows Update\Windows Update for Business\TargetReleaseVersion.sls
#
# SUPPORTED WINDOWS OS
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
