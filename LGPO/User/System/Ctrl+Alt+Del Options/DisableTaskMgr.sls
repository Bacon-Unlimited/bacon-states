# windows:SUPPORTED_Win2k
#
# This policy setting prevents users from starting Task Manager.
# 
# Task Manager (taskmgr.exe) lets users start and stop programs; monitor the performance of their computers; view and monitor all programs running on their computers, including system services; find the executable names of programs; and change the priority of the process in which programs run.
# 
# If you enable this policy setting, users will not be able to access Task Manager. If users try to start Task Manager, a message appears explaining that a policy prevents the action.
# 
# If you disable or do not configure this policy setting, users can access Task Manager to  start and stop programs, monitor the performance of their computers, view and monitor all programs running on their computers, including system services, find the executable names of programs, and change the priority of the process in which programs run.
Remove Task Manager:
  lgpo.set:
  - name: DisableTaskMgr
  - setting: Enabled
  - policy_class: User
