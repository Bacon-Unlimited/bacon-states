Limit the maximum number of BITS jobs for this computer:
  lgpo.set:
    - setting:
        BITS_MaxJobsPerMachineList: 300
    - policy_class: Machine
