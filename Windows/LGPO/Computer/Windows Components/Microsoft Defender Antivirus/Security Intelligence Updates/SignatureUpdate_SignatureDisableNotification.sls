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
# LOCATION: \Computer\Windows Components\Microsoft Defender Antivirus\Security Intelligence Updates\SignatureUpdate_SignatureDisableNotification.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure the antimalware service to receive notifications to disable individual security intelligence in response to reports it sends to Microsoft MAPS. Microsoft MAPS uses these notifications to disable security intelligence that are causing false positive reports. You must have configured your computer to join Microsoft MAPS for this functionality to work.
# 
#     If you enable this setting or do not configure, the antimalware service will receive notifications to disable security intelligence.
# 
#     If you disable this setting, the antimalware service will not receive notifications to disable security intelligence.
Allow notifications to disable security intelligence based reports to Microsoft MAPS:
  lgpo.set:
  - name: SignatureUpdate_SignatureDisableNotification
  - setting: Enabled
  - policy_class: Machine
