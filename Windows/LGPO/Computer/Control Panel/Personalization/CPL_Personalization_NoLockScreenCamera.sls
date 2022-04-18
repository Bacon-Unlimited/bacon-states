# windows:SUPPORTED_Windows_6_3
#
# Disables the lock screen camera toggle switch in PC Settings and prevents a camera from being invoked on the lock screen.
# 
# By default, users can enable invocation of an available camera on the lock screen.
# 
# If you enable this setting, users will no longer be able to enable or disable lock screen camera access in PC Settings, and the camera cannot be invoked on the lock screen.
Prevent enabling lock screen camera:
  lgpo.set:
  - name: CPL_Personalization_NoLockScreenCamera
  - setting: Enabled
  - policy_class: Machine
