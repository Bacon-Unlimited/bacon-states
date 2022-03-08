Set default download behavior for BITS jobs on costed networks:
  lgpo.set:
    - setting:
        BITS_TransferPolicyForegroundPriorityValue: "Always transfer"
        BITS_TransferPolicyForegroundPriorityValueCustom: 255
        BITS_TransferPolicyHighPriorityValue: "Always transfer"
        BITS_TransferPolicyHighPriorityValueCustom: 255
        BITS_TransferPolicyNormalPriorityValue: "Always transfer"
        BITS_TransferPolicyNormalPriorityValueCustom: 255
        BITS_TransferPolicyLowPriorityValue: "Always transfer"
        BITS_TransferPolicyLowPriorityValueCustom: 255
    - policy_class: Machine
