# SUPPORTED_Windows8OrBITS5
#
# 
#           This policy setting defines the default behavior that the Background Intelligent Transfer Service (BITS) uses for background transfers when the system is connected to a costed network (3G, etc.). Download behavior policies further limit the network usage of background transfers.
# 
#           If you enable this policy setting, you can define a default download policy for each BITS job priority. This setting does not override a download policy explicitly configured by the application that created the BITS job, but does apply to jobs that are created by specifying only a priority.
# 
#           For example, you can specify that background jobs are by default to transfer only when on uncosted network connections, but foreground jobs should proceed only when not roaming. The values that can be assigned are:
#           -         Always transfer
#           -         Transfer unless roaming
#           -         Transfer unless surcharge applies (when not roaming or overcap)
#           -         Transfer unless nearing limit (when not roaming or nearing cap)
#           -         Transfer only if unconstrained
#           -         Custom--allows you to specify a bitmask, in which the bits describe cost states allowed or disallowed for this priority: (bits described here)
#           0x1 - The cost is unknown or the connection is unlimited and is considered to be unrestricted of usage charges and capacity constraints.
#           0x2 - The usage of this connection is unrestricted up to a certain data limit
#           0x4 - The usage of this connection is unrestricted up to a certain data limit and plan usage is less than 80 percent of the limit.
#           0x8 - Usage of this connection is unrestricted up to a certain data limit and plan usage is between 80 percent and 100 percent of the limit.
#           0x10 - Usage of this connection is unrestricted up to a certain data limit, which has been exceeded. Surcharge applied or unknown.
#           0x20 - Usage of this connection is unrestricted up to a certain data limit, which has been exceeded. No surcharge applies, but speeds are likely reduced.
#           0x40 - The connection is costed on a per-byte basis.
#           0x80 - The connection is roaming.
#           0x80000000 - Ignore congestion.
#       
Set default download behavior for BITS jobs on costed networks:
  lgpo.set:
  - name: BITS_SetTransferPolicyOnCostedNetwork
  - setting:
      BITS_TransferPolicyForegroundPriorityValue: enum-placeholder
      BITS_TransferPolicyForegroundPriorityValueCustom: decimal-placeholder
      BITS_TransferPolicyHighPriorityValue: enum-placeholder
      BITS_TransferPolicyHighPriorityValueCustom: decimal-placeholder
      BITS_TransferPolicyLowPriorityValue: enum-placeholder
      BITS_TransferPolicyLowPriorityValueCustom: decimal-placeholder
      BITS_TransferPolicyNormalPriorityValue: enum-placeholder
      BITS_TransferPolicyNormalPriorityValueCustom: decimal-placeholder
  - policy_class: Machine
