# windows:SUPPORTED_Win2k
#
# This policy setting allows you to turn off the Autoplay feature.
# 
#           Autoplay begins reading from a drive as soon as you insert media in the drive. As a result, the setup file of programs and the music on audio media start immediately.
# 
#           Prior to Windows XP SP2, Autoplay is disabled by default on removable drives, such as the floppy disk drive (but not the CD-ROM drive), and on network drives.
# 
#           Starting with Windows XP SP2, Autoplay is enabled for removable drives as well, including Zip drives and some USB mass storage devices.
# 
#           If you enable this policy setting, Autoplay is disabled on CD-ROM and removable media drives, or disabled on all drives.
# 
#           This policy setting disables Autoplay on additional types of drives. You cannot use this setting to enable Autoplay on drives on which it is disabled by default.
# 
#           If you disable or do not configure this policy setting, AutoPlay is enabled.
# 
#           Note: This policy setting appears in both the Computer Configuration and User Configuration folders. If the policy settings conflict, the policy setting in Computer Configuration takes precedence over the policy setting in User Configuration.
Turn off Autoplay:
  lgpo.set:
  - name: Autorun
  - setting:
      Autorun_Box: enum-placeholder
  - policy_class: Machine
