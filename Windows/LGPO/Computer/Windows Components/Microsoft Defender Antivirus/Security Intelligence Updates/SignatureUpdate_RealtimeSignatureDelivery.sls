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
# LOCATION: \Computer\Windows Components\Microsoft Defender Antivirus\Security Intelligence Updates\SignatureUpdate_RealtimeSignatureDelivery.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows you to enable real-time security intelligence updates in response to reports sent to Microsoft MAPS. If the service reports a file as an unknown and Microsoft MAPS finds that the latest security intelligence update has security intelligence for a threat involving that file, the service will receive all of the latest security intelligence for that threat immediately. You must have configured your computer to join Microsoft MAPS for this functionality to work.
# 
#     If you enable or do not configure this setting, real-time security intelligence updates will be enabled.
# 
#     If you disable this setting, real-time security intelligence updates will disabled.
Allow real-time security intelligence updates based on reports to Microsoft MAPS:
  lgpo.set:
  - name: SignatureUpdate_RealtimeSignatureDelivery
  - setting: Enabled
  - policy_class: Machine
