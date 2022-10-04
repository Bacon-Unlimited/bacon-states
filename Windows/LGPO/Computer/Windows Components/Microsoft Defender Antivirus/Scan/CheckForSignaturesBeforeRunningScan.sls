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
# LOCATION: \Computer\Windows Components\Microsoft Defender Antivirus\Scan\CheckForSignaturesBeforeRunningScan.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to manage whether a check for new virus and spyware security intelligence will occur before running a scan. 
# 
#     This setting applies to scheduled scans as well as the command line "mpcmdrun -SigUpdate", but it has no effect on scans initiated manually from the user interface.
# 
#     If you enable this setting, a check for new security intelligence will occur before running a scan.
# 
#     If you disable this setting or do not configure this setting, the scan will start using the existing security intelligence.
Check for the latest virus and spyware security intelligence before running a scheduled scan:
  lgpo.set:
  - name: CheckForSignaturesBeforeRunningScan
  - setting: Enabled
  - policy_class: Machine
