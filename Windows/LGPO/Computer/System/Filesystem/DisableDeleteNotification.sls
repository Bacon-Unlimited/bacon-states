# windows:SUPPORTED_Windows7
#
# Delete notification is a feature that notifies the underlying storage device of clusters that are freed due to a file delete operation.
# 
# A value of 0, the default, will enable delete notifications for all volumes. 
# A value of 1 will disable delete notifications for all volumes.
Disable delete notifications on all volumes:
  lgpo.set:
  - name: DisableDeleteNotification
  - setting: Enabled
  - policy_class: Machine
