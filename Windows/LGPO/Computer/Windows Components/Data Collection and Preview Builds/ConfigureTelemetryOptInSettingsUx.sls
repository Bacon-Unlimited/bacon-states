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
# LOCATION: \Computer\Windows Components\Data Collection and Preview Builds\ConfigureTelemetryOptInSettingsUx.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_RS4
#
# This policy setting determines whether an end user can change telemetry levels in Settings.
# 
# If you set this policy setting to "Disable Telemetry opt-in Settings", telemetry levels are disabled in Settings, and prevents end users from changing them.
# 
# If you dont configure this policy setting, or you set it to "Enable Telemetry opt-in Settings, end users can change the device telemetry level in the Settings app.
# 
# Note:
# To set a limit on the level of diagnostic data that is sent to Microsoft by your organization, use the Allow Telemetry policy setting.
#       
Configure telemetry opt-in setting user interface.:
  lgpo.set:
  - name: ConfigureTelemetryOptInSettingsUx
  - setting:
      ConfigureTelemetryOptInSettingsUx: enum-placeholder
  - policy_class: Machine
