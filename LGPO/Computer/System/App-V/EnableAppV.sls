# windows:SUPPORTED_Windows_10_0_NOARM
#
# This policy setting allows you to enable or disable Microsoft Application Virtualization (App-V) feature. Reboot is needed for disable to take effect.
Enable App-V Client:
  lgpo.set:
  - name: EnableAppV
  - setting: Enabled
  - policy_class: Machine
