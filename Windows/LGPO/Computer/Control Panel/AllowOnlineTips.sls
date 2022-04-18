# windows:SUPPORTED_Windows_10_0_RS3
#
# Enables or disables the retrieval of online tips and help for the Settings app.
# 
# If disabled, Settings will not contact Microsoft content services to retrieve tips and help content.
Allow Online Tips:
  lgpo.set:
  - name: AllowOnlineTips
  - setting:
      CheckBox_AllowOnlineTips: boolean-placeholder
  - policy_class: Machine
