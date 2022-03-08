Timeout for inactive BITS jobs:
  lgpo.set:
    - setting:
        BITS_Job_Timeout_Time: 90
    - policy_class: Machine
