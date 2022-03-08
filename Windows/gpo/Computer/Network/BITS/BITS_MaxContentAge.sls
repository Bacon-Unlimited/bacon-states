Limit the age of files in the BITS Peercache:
  lgpo.set:
    - setting:
        BITS_MaxContentAgeList: 1
    - policy_class: Machine
