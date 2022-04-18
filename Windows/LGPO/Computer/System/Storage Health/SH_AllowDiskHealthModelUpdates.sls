# windows:SUPPORTED_Windows_10_0_RS3
#
# 
#         Allows downloading new updates to ML Model parameters for predicting storage disk failure.
# 
#         Enabled:
#         Updates would be downloaded for the Disk Failure Prediction Failure Model.
# 
#         Disabled:
#         Updates would not be downloaded for the Disk Failure Prediction Failure Model.
# 
#         Not configured:
#         Same as Enabled.
#     
Allow downloading updates to the Disk Failure Prediction Model:
  lgpo.set:
  - name: SH_AllowDiskHealthModelUpdates
  - setting: Enabled
  - policy_class: Machine
