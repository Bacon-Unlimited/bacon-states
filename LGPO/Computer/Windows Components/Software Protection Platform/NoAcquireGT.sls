# windows:SUPPORTED_Windows_10_0
#
#  
#     This policy setting lets you opt-out of sending KMS client activation data to Microsoft automatically. Enabling this setting prevents this computer from sending data to Microsoft regarding its activation state.
#     If you disable or do not configure this policy setting, KMS client activation data will be sent to Microsoft services when this device activates. 
#     Policy Options: 
#         -   Not Configured (default -- data will be automatically sent to Microsoft)
#         -   Disabled (data will be automatically sent to Microsoft)
#         -   Enabled (data will not be sent to Microsoft)
#         
Turn off KMS Client Online AVS Validation:
  lgpo.set:
  - name: NoAcquireGT
  - setting: Enabled
  - policy_class: Machine
