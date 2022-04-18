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
