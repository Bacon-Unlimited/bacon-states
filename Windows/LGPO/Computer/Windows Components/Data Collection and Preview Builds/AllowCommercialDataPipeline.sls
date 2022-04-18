# windows:SUPPORTED_Windows_10_0_RS6
#
# AllowCommercialDataPipeline controls whether Microsoft is a processor or controller for Windows diagnostic data collected from this device.
#           If you enable this policy Microsoft will be the processor of Windows diagnostic data collected from the Windows device and the customer will be the controller. The device must be registered in Azure AD for this policy to succeed.
#           If you disable or don't configure this policy setting, Microsoft will be the controller of Windows diagnostic data collected from this device.
#           This policy only controls if Microsoft is a processor for Windows diagnostic data from this device. Configuring this setting does not change whether diagnostic data is collected or the ability of the user to change the level. To configure collection level please use the "Allow Diagnostic Data" policy, and to restrict users on this device from changing the diagnostic data level please use the "Configure diagnostic data opt-in settings user interface" policy.
#       
Allow commercial data pipeline:
  lgpo.set:
  - name: AllowCommercialDataPipeline
  - setting: Enabled
  - policy_class: Machine
