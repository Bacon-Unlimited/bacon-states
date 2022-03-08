Configure how often a DFS client discovers domain controllers:
  lgpo.set:
    - setting:
        DFSDiscoverDialog: 15
    - policy_class: Machine
