# windows:SUPPORTED_Win2k
#
# Sets the priority of the pruning thread.
# 
#             The pruning thread, which runs only on domain controllers, deletes printer objects from Active Directory if the printer that published the object does not respond to contact attempts. This process keeps printer information in Active Directory current.
# 
#             The thread priority influences the order in which the thread receives processor time and determines how likely it is to be preempted by higher priority threads.
# 
#             By default, the pruning thread runs at normal priority. However, you can adjust the priority to improve the performance of this service.
# 
#             Note: This setting is used only on domain controllers.
Directory pruning priority:
  lgpo.set:
  - name: PruningPriority
  - setting:
      PriorityLevel: enum-placeholder
  - policy_class: Machine
