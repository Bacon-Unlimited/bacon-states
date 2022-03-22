# windows:SUPPORTED_WindowsVista
#
# 
#         This policy setting configures behaviour of samples submission when opt-in for MAPS telemetry is set.
# 
#         Possible options are:
#         (0x0) Always prompt
#         (0x1) Send safe samples automatically
#         (0x2) Never send
#         (0x3) Send all samples automatically
#     
Send file samples when further analysis is required:
  lgpo.set:
  - name: SubmitSamplesConsent
  - setting:
      SubmitSamplesConsent: enum-placeholder
  - policy_class: Machine
