# windows:SUPPORTED_Windows8
#
# This policy allows you to configure tracing levels for Windows software trace preprocessor (WPP Software Tracing). 
#     Tracing levels are defined as:
#     1 - Error
#     2 - Warning
#     3 - Info
#     4 - Debug
Configure WPP tracing level:
  lgpo.set:
  - name: Reporting_WppTracingLevel
  - setting:
      Reporting_WppTracingLevel: decimal-placeholder
  - policy_class: Machine
