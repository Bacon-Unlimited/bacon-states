# windows:SUPPORTED_Windows_10_0_RS4
#
# 
# This policy allows IT admins to turn off the ability to Link a Phone with a PC to continue reading, emailing and other tasks that requires linking between Phone and PC.
# 
# If you enable this policy setting, the Windows device will be able to enroll in Phone-PC linking functionality and participate in Continue on PC experiences.
# 
# If you disable this policy setting, the Windows device is not allowed to be linked to Phones, will remove itself from the device list of any linked Phones, and cannot participate in Continue on PC experiences.
# 
# If you do not configure this policy setting, the default behavior depends on the Windows edition. Changes to this policy take effect on reboot.
#       
Phone-PC linking on this device:
  lgpo.set:
  - name: EnableMMX
  - setting: Enabled
  - policy_class: Machine
