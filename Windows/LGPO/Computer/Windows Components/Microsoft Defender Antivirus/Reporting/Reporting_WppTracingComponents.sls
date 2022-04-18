# windows:SUPPORTED_Windows8
#
# This policy configures Windows software trace preprocessor (WPP Software Tracing) components.
Configure Windows software trace preprocessor components:
  lgpo.set:
  - name: Reporting_WppTracingComponents
  - setting:
      Reporting_WppTracingComponents: decimal-placeholder
  - policy_class: Machine
