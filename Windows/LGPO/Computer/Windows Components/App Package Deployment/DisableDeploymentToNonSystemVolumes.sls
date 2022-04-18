# windows:SUPPORTED_Windows_6_3_Update2
#
# 
#         This policy setting allows you to manage installing Windows apps on additional volumes such as secondary partitions, USB drives, or SD cards.
# 
#         If you enable this setting, you can't move or install Windows apps on volumes that are not the system volume.
# 
#         If you disable or do not configure this setting, you can move or install Windows apps on other volumes.
#       
Disable installing Windows apps on non-system volumes:
  lgpo.set:
  - name: DisableDeploymentToNonSystemVolumes
  - setting: Enabled
  - policy_class: Machine
