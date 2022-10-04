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
# LOCATION: \Computer\Windows Components\Data Collection and Preview Builds\AllowTelemetry.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# By configuring this setting in Windows 10, end users will not be able to opt into a higher level of telemetry collection than the level you have set for your organization.  This limitation applies only to the Windows operating system and apps included with Windows, and does not apply to third-party apps running on Windows 10.
# 
# Diagnostic data is categorized into four levels, as follows:
#   - 0 (Security). Information thats required to help keep Windows, Windows Server, and System Center secure, including data about the Connected User Experiences and Telemetry component settings, the Malicious Software Removal Tool, and Windows Defender.
#   - 1 (Required). Basic device info, including: quality-related data, app compatibility, and data from the Security level.
#   - 2 (Enhanced). Additional insights, including: how Windows, Windows Server, System Center, and apps are used, how they perform, advanced reliability data, and data from both the Required and the Security levels.
#   - 3 (Optional). All data necessary to identify and help to fix problems, plus data from the Security, Required, and Enhanced levels.
# 
# Options available to users in the Settings app are changed by configuring this setting, and even if not set, may be impacted by other group policy settings.  Note that if this policy is configured to allow a telemetry setting of Security or Basic, end users will be unable to select a higher level.
#       
Allow Telemetry:
  lgpo.set:
  - name: AllowTelemetry
  - setting:
      AllowTelemetry: enum-placeholder
  - policy_class: Machine
