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
# LOCATION: \Computer\Windows Components\Microsoft Defender Antivirus\ServiceKeepAlive.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure whether or not the antimalware service remains running when antivirus and antispyware security intelligence is disabled. It is recommended that this setting remain disabled.
# 
#     If you enable this setting, the antimalware service will always remain running even if both antivirus and antispyware security intelligence is disabled.
# 
#     If you disable or do not configure this setting, the antimalware service will be stopped when both antivirus and antispyware security intelligence is disabled. If the computer is restarted, the service will be started if it is set to Automatic startup. After the service has started, there will be a check to see if antivirus and antispyware security intelligence is enabled. If at least one is enabled, the service will remain running. If both are disabled, the service will be stopped.
Allow antimalware service to remain running always:
  lgpo.set:
  - name: ServiceKeepAlive
  - setting: Enabled
  - policy_class: Machine
