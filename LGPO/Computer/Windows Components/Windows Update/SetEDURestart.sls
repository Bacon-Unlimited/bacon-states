# windows:SUPPORTED_Windows_10_0
#
# Enabling this policy for EDU devices that remain on Carts overnight will skip power checks to ensure update reboots will happen at the scheduled install time.
Update Power Policy for Cart Restarts:
  lgpo.set:
  - name: SetEDURestart
  - setting: Enabled
  - policy_class: Machine
