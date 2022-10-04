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
# LOCATION: \Computer\Windows Components\Application Compatibility\AppCompatTurnOffApplicationImpactTelemetry.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# The policy controls the state of the Application Telemetry engine in the system.
# 
# Application Telemetry is a mechanism that tracks anonymous usage of specific Windows system components by applications.
# 
# Turning Application Telemetry off by selecting "enable" will stop the collection of usage data.
# 
# If the customer Experience Improvement program is turned off, Application Telemetry will be turned off regardless of how this policy is set.
# 
# Disabling telemetry will take effect on any newly launched applications. To ensure that telemetry collection has stopped for all applications, please reboot your machine.
Turn off Application Telemetry:
  lgpo.set:
  - name: AppCompatTurnOffApplicationImpactTelemetry
  - setting: Enabled
  - policy_class: Machine
