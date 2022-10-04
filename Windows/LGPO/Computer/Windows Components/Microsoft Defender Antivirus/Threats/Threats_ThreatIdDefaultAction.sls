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
# LOCATION: \Computer\Windows Components\Microsoft Defender Antivirus\Threats\Threats_ThreatIdDefaultAction.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting customize which remediation action will be taken for each listed Threat ID when it is detected during a scan. Threats should be added under the Options for this setting. Each entry must be listed as a name value pair. The name defines a valid Threat ID, while the value contains the action ID for the remediation action that should be taken.
# 
#     Valid remediation action values are:
#     2 = Quarantine
#     3 = Remove
#     6 = Ignore
Specify threats upon which default action should not be taken when detected:
  lgpo.set:
  - name: Threats_ThreatIdDefaultAction
  - setting:
      Threats_ThreatIdDefaultActionList:
      - placeholder1
      - placeholder2
  - policy_class: Machine
