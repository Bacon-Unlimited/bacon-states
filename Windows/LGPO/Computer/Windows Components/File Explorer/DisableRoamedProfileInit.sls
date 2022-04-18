# windows:SUPPORTED_Windows8
#
# This policy setting allows administrators who have configured roaming profile in conjunction with Delete Cached Roaming Profile Group Policy setting to ensure that Explorer will not reinitialize default program associations and other settings to default values. 
# 
# If you enable this policy setting on a machine that does not contain all programs installed in the same manner as it was on the machine on which the user had last logged on, unexpected behavior could occur. 
Do not reinitialize a pre-existing roamed user profile when it is loaded on a machine for the first time:
  lgpo.set:
  - name: DisableRoamedProfileInit
  - setting: Enabled
  - policy_class: Machine
