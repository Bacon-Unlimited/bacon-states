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
# LOCATION: \Computer\Windows Components\Windows Error Reporting\Advanced Error Reporting Settings\PCH_ReportShutdownEvents.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsNETOnly
#
# This policy setting controls whether or not unplanned shutdown events can be reported when error reporting is enabled.
# 
# If you enable this policy setting, error reporting includes unplanned shutdown events.
# 
# If you disable this policy setting, unplanned shutdown events are not included in error reporting.
# 
# If you do not configure this policy setting, users can adjust this setting using the control panel, which is set to "Upload unplanned shutdown events" by default.
# 
# Also see the "Configure Error Reporting" policy setting.
Report unplanned shutdown events:
  lgpo.set:
  - name: PCH_ReportShutdownEvents
  - setting: Enabled
  - policy_class: Machine
