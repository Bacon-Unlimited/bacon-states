# windows:SUPPORTED_Windows7
#
# This policy setting allows you to create a list of IEEE 1667 silos, compliant with the Institute of Electrical and Electronics Engineers, Inc. (IEEE) 1667 specification, that are usable on your computer.
# 
# If you enable this policy setting, only IEEE 1667 silos that match a silo type identifier specified in this policy are usable on your computer.
# 
# If you disable or do not configure this policy setting, all IEEE 1667 silos on Enhanced Storage devices are usable on your computer.
Configure list of IEEE 1667 silos usable on your computer:
  lgpo.set:
  - name: ApprovedSilos
  - setting:
      ApprovedSilos_List:
      - placeholder1
      - placeholder2
  - policy_class: Machine
