Limit the maximum number of BITS jobs for each user:
  lgpo.set:
    - setting:
        BITS_MaxJobsPerUserList: 60
    - policy_class: Machine
