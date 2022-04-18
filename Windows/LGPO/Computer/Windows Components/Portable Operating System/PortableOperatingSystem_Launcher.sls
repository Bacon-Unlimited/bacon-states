# windows:SUPPORTED_Windows8
#
# 
# 
# This policy setting controls whether the PC will boot to Windows To Go if a USB device containing a Windows To Go workspace is connected, and controls whether users can make changes using the Windows To Go Startup Options Control Panel item.
# 
# If you enable this setting, booting to Windows To Go when a USB device is connected will be enabled, and users will not be able to make changes using the Windows To Go Startup Options Control Panel item.
# 
# If you disable this setting, booting to Windows To Go when a USB device is connected will not be enabled unless a user configures the option manually in the BIOS or other boot order configuration.
# 
# If you do not configure this setting, users who are members of the Administrators group can make changes using the Windows To Go Startup Options Control Panel item.
Windows To Go Default Startup Options:
  lgpo.set:
  - name: PortableOperatingSystem_Launcher
  - setting: Enabled
  - policy_class: Machine
