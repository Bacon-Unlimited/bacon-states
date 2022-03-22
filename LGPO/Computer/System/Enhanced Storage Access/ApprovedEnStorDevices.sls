# windows:SUPPORTED_Windows7
#
# This policy setting allows you to configure a list of Enhanced Storage devices by manufacturer and product ID that are usable on your computer.
# 
# If you enable this policy setting, only Enhanced Storage devices that contain a manufacturer and product ID specified in this policy are usable on your computer.
# 
# If you disable or do not configure this policy setting, all Enhanced Storage devices are usable on your computer.
Configure list of Enhanced Storage devices usable on your computer:
  lgpo.set:
  - name: ApprovedEnStorDevices
  - setting:
      ApprovedEnStorDevices_List:
      - placeholder1
      - placeholder2
  - policy_class: Machine
