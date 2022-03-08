Limit the maximum number of files allowed in a BITS job:
  lgpo.set:
    - setting:
        BITS_MaxFilesPerJobList: 200
    - policy_class: Machine
