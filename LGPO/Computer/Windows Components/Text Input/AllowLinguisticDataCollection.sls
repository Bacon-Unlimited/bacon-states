# windows:SUPPORTED_Windows_10_0_RS4
#
# This policy setting controls the ability to send inking and typing data to Microsoft to improve the language recognition and suggestion capabilities of apps and services running on Windows. 
Improve inking and typing recognition:
  lgpo.set:
  - name: AllowLinguisticDataCollection
  - setting: Enabled
  - policy_class: Machine
