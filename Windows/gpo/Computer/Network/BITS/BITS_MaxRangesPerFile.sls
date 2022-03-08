Limit the maximum number of ranges that can be added to the file in a BITS job:
  lgpo.set:
    - setting:
        BITS_MaxRangesPerFileList: 500
    - policy_class: Machine
