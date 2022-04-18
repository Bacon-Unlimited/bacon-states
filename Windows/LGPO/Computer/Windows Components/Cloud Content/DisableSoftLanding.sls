# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# This policy setting prevents Windows tips from being shown to users.
# 
# If you enable this policy setting, users will no longer see Windows tips.
# 
# If you disable or do not configure this policy setting, users may see contextual popups explaining how to use Windows. Microsoft uses diagnostic data to determine which tips to show.
# 
# Note: If you disable or do not configure this policy setting, but enable the "Computer Configuration\Administrative Templates\Windows Components\Data Collection and Preview Builds\Allow Telemetry" policy setting with a level of "Basic" or below, users may see a limited set of tips.
# Also, this setting only applies to Enterprise and Education SKUs.
Do not show Windows tips:
  lgpo.set:
  - name: DisableSoftLanding
  - setting: Enabled
  - policy_class: Machine
