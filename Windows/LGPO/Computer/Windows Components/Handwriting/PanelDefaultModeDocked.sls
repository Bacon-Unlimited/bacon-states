# windows:SUPPORTED_Windows_10_0_RS3
#
# The handwriting panel has 2 modes - floats near the text box, or, attached to the bottom of the screen. Default is floating near text box. If you want the panel to be fixed, use this policy to fix it to the bottom.
Handwriting Panel Default Mode Docked:
  lgpo.set:
  - name: PanelDefaultModeDocked
  - setting: Enabled
  - policy_class: Machine
