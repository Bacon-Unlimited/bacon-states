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
# LOCATION: \Computer\Windows Components\Cloud Content\DisableSoftLanding.sls
#
# SUPPORTED WINDOWS OS
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
