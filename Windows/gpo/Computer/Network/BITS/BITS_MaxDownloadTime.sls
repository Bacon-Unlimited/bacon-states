Limit the maximum BITS job download time:
  lgpo.set:
    - setting:
        BITS_MaxDownloadSeconds: 1
    - policy_class: Machine
