# windows:SUPPORTED_WindowsNET
#
# Specifies whether to prevent the MS-DOS subsystem (ntvdm.exe) from running on this computer. This setting affects the launching of 16-bit applications in the operating system.
# 
# You can use this setting to turn off the MS-DOS subsystem, which will reduce resource usage and prevent users from running 16-bit applications. To run any 16-bit application or any application with 16-bit components, ntvdm.exe must be allowed to run. The MS-DOS subsystem starts when the first 16-bit application is launched. While the MS-DOS subsystem is running, any subsequent 16-bit applications launch faster, but overall resource usage on the system is increased.
# 
# If the status is set to Enabled, the MS-DOS subsystem is prevented from running, which then prevents any 16-bit applications from running. In addition, any 32-bit applications with 16-bit installers or other 16-bit components cannot run.
# 
# If the status is set to Disabled, the MS-DOS subsystem runs for all users on this computer.
# 
# If the status is set to Not Configured, the OS falls back on a local policy set by the registry DWORD value HKLM\System\CurrentControlSet\Control\WOW\DisallowedPolicyDefault. If that value is non-0, this prevents all 16-bit applications from running. If that value is 0, 16-bit applications are allowed to run. If that value is also not present, on Windows 10 and above the OS will launch the 16-bit application support control panel to allow an elevated administrator to make the decision; on windows 7 and downlevel, the OS will allow 16-bit applications to run.
# 
# Note:  This setting appears in only Computer Configuration.
Prevent access to 16-bit applications:
  lgpo.set:
  - name: AppCompatPrevent16BitMach
  - setting: Enabled
  - policy_class: Machine
