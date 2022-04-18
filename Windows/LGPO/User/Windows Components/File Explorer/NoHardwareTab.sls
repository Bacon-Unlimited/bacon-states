# windows:SUPPORTED_Win2k
#
# Removes the Hardware tab.
# 
# This setting removes the Hardware tab from Mouse, Keyboard, and Sounds and Audio Devices in Control Panel. It also removes the Hardware tab from the Properties dialog box for all local drives, including hard drives, floppy disk drives, and CD-ROM drives. As a result, users cannot use the Hardware tab to view or change the device list or device properties, or use the Troubleshoot button to resolve problems with the device.
Remove Hardware tab:
  lgpo.set:
  - name: NoHardwareTab
  - setting: Enabled
  - policy_class: User
