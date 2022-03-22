# windows:SUPPORTED_Windows_10_0_RS2
#
# GDI DPI Scaling enables applications that are not DPI aware to become per monitor DPI aware.
# 
# This policy setting lets you specify legacy applications that have GDI DPI Scaling turned on.
# 
# If you enable this policy setting, GDI DPI Scaling is turned on for all legacy applications in the list.
# 
# If you disable or do not configure this policy setting, GDI DPI Scaling will not be enabled for an application except when an application is enabled by using ApplicationCompatibility database, ApplicationCompatibility UI System (Enhanced) setting, or an application manifest.
# 
# If GDI DPI Scaling is configured to both turn off and turn on an application, the application will be turned off.
Turn on GdiDPIScaling for applications:
  lgpo.set:
  - name: DisplayTurnOnGdiDPIScaling
  - setting:
      DisplayTurnOnGdiDPIScalingPrompt: text-placeholder
  - policy_class: Machine
