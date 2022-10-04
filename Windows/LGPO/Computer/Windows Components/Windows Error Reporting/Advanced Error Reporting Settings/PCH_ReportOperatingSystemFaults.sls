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
# LOCATION: \Computer\Windows Components\Windows Error Reporting\Advanced Error Reporting Settings\PCH_ReportOperatingSystemFaults.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsNET_XP
#
# This policy setting controls whether errors in the operating system are included Windows Error Reporting is enabled.
# 
# If you enable this policy setting, Windows Error Reporting includes operating system errors.
# 
# If you disable this policy setting, operating system errors are not included in error reports.
# 
# If you do not configure this policy setting, users can change this setting in Control Panel. By default, Windows Error Reporting settings in Control Panel are set to upload operating system errors.
# 
# See also the Configure Error Reporting policy setting.
Report operating system errors:
  lgpo.set:
  - name: PCH_ReportOperatingSystemFaults
  - setting: Enabled
  - policy_class: Machine
