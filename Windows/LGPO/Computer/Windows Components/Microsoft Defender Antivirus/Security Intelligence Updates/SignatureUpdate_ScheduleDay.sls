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
# LOCATION: \Computer\Windows Components\Microsoft Defender Antivirus\Security Intelligence Updates\SignatureUpdate_ScheduleDay.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows you to specify the day of the week on which to check for security intelligence updates. The check can also be configured to run every day or to never run at all.
# 
#     This setting can be configured with the following ordinal number values:
#     (0x0) Every Day (default)
#     (0x1) Sunday 
#     (0x2) Monday
#     (0x3) Tuesday
#     (0x4) Wednesday
#     (0x5) Thursday
#     (0x6) Friday
#     (0x7) Saturday
#     (0x8) Never
# 
#     If you enable this setting, the check for security intelligence updates will occur at the frequency specified.
# 
#     If you disable or do not configure this setting, the check for security intelligence updates will occur at a default frequency.
Specify the day of the week to check for security intelligence updates:
  lgpo.set:
  - name: SignatureUpdate_ScheduleDay
  - setting:
      SignatureUpdate_ScheduleDay: enum-placeholder
  - policy_class: Machine
