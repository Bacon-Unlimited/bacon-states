# windows:SUPPORTED_Windows_10_0
#
# By configuring this setting in Windows 10, end users will not be able to opt into a higher level of telemetry collection than the level you have set for your organization.  This limitation applies only to the Windows operating system and apps included with Windows, and does not apply to third-party apps running on Windows 10.
# 
# Diagnostic data is categorized into four levels, as follows:
#   - 0 (Security). Information that’s required to help keep Windows, Windows Server, and System Center secure, including data about the Connected User Experiences and Telemetry component settings, the Malicious Software Removal Tool, and Windows Defender.
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
  - policy_class: User
