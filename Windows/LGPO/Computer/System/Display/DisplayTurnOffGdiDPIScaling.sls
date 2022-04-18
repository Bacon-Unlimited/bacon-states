# windows:SUPPORTED_Windows_10_0_RS2
#
# GDI DPI Scaling enables applications that are not DPI aware to become per monitor DPI aware.
# 
# This policy setting lets you specify legacy applications that have GDI DPI Scaling turned off.
# 
# If you enable this policy setting, GDI DPI Scaling is turned off for all applications in the list, even if they are enabled by using ApplicationCompatibility database, ApplicationCompatibility UI System (Enhanced) setting, or an application manifest.
# 
# If you disable or do not configure this policy setting, GDI DPI Scaling might still be turned on for legacy applications.
# 
# If GDI DPI Scaling is configured to both turn off and turn on an application, the application will be turned off.
Turn off GdiDPIScaling for applications:
  lgpo.set:
  - name: DisplayTurnOffGdiDPIScaling
  - setting:
      DisplayTurnOffGdiDPIScalingPrompt: text-placeholder
  - policy_class: Machine
