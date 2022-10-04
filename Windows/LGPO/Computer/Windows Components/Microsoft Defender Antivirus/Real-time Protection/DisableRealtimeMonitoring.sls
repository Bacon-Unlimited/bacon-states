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
# LOCATION: \Computer\Windows Components\Microsoft Defender Antivirus\Real-time Protection\DisableRealtimeMonitoring.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting turns off real-time protection prompts for known malware detection.
# 
#     Microsoft Defender Antivirus alerts you when malware or potentially unwanted software attempts to install itself or to run on your computer.
# 
#     If you enable this policy setting, Microsoft Defender Antivirus will not prompt users to take actions on malware detections.
# 
#     If you disable or do not configure this policy setting, Microsoft Defender Antivirus will prompt users to take actions on malware detections.
Turn off real-time protection:
  lgpo.set:
  - name: DisableRealtimeMonitoring
  - setting: Enabled
  - policy_class: Machine
