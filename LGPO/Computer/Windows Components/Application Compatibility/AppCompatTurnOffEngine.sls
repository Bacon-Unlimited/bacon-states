# windows:SUPPORTED_WindowsNET
#
#  This policy controls the state of the application compatibility engine in the system.
# 
# The engine is part of the loader and looks through a compatibility database every time an application is started on the system.  If a match for the application is found it provides either run-time solutions or compatibility fixes, or displays an Application Help message if the application has a know problem.
# 
# Turning off the application compatibility engine will boost system performance.  However, this will degrade the compatibility of many popular legacy applications, and will not block known incompatible applications from installing.  (For Instance: This may result in a blue screen if an old anti-virus application is installed.)
# 
# The Windows Resource Protection and User Account Control features of Windows use the application compatibility engine to provide mitigations for application problems. If the engine is turned off, these mitigations will not be applied to applications and their installers and these applications may fail to install or run properly.
# 
# This option is useful to server administrators who require faster performance and are aware of the compatibility of the applications they are using.  It is particularly useful for a web server where applications may be launched several hundred times a second, and the performance of the loader is essential.
# 
# NOTE: Many system processes cache the value of this setting for performance reasons.  If you make changes to this setting, please reboot to ensure that your system accurately reflects those changes.
Turn off Application Compatibility Engine:
  lgpo.set:
  - name: AppCompatTurnOffEngine
  - setting: Enabled
  - policy_class: Machine
