# windows:SUPPORTED_Windows7
#
# Enables Dynamic Virtualization of supported shell extensions, browser helper objects, and ActiveX controls.
Enable Dynamic Virtualization:
  lgpo.set:
  - name: Virtualization_JITVEnable
  - setting: Enabled
  - policy_class: Machine
