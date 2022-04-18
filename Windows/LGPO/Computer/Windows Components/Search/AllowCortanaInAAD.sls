# windows:SUPPORTED_Windows_10_0
#
# Allow the cortana opt-in page during windows setup out of the box experience
Allow Cortana Page in OOBE on an AAD account:
  lgpo.set:
  - name: AllowCortanaInAAD
  - setting:
      AllowCortanaAAD_Dropdown: enum-placeholder
  - policy_class: Machine
