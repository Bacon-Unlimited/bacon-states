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
