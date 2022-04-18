# SUPPORTED_Windows7OrBITS35
#
# This policy setting limits the network bandwidth that Background Intelligent Transfer Service (BITS) uses for background transfers during the maintenance days and hours. Maintenance schedules further limit the network bandwidth that is used for background transfers.
# 
#           If you enable this policy setting, you can define a separate set of network bandwidth limits and set up a schedule for the maintenance period.
# 
#           You can specify a limit to use for background jobs during a maintenance schedule. For example, if normal priority jobs are currently limited to 256 Kbps on a work schedule, you can further limit the network bandwidth of normal priority jobs to 0 Kbps from 8:00 A.M. to 10:00 A.M. on a maintenance schedule.
# 
#           If you disable or do not configure this policy setting, the limits defined for work or nonwork schedules will be used.
# 
#           Note:  The bandwidth limits that are set for the maintenance period supersede any limits defined for work and other schedules.
#       
Set up a maintenance schedule to limit the maximum network bandwidth used for BITS background transfers:
  lgpo.set:
  - name: BITS_MaxBandwidthV2_Maintenance
  - setting:
      BITS_MaintenanceDaysFrom: enum-placeholder
      BITS_MaintenanceDaysTo: enum-placeholder
      BITS_MaintenanceHighPriorityLimit: decimal-placeholder
      BITS_MaintenanceHighPriorityUnit: enum-placeholder
      BITS_MaintenanceHoursFrom: enum-placeholder
      BITS_MaintenanceHoursTo: enum-placeholder
      BITS_MaintenanceLowPriorityLimit: decimal-placeholder
      BITS_MaintenanceLowPriorityUnit: enum-placeholder
      BITS_MaintenanceNormalPriorityLimit: decimal-placeholder
      BITS_MaintenanceNormalPriorityUnit: enum-placeholder
  - policy_class: Machine
