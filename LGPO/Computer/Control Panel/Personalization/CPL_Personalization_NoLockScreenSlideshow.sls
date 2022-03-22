# windows:SUPPORTED_Windows_6_3
#
# Disables the lock screen slide show settings in PC Settings and prevents a slide show from playing on the lock screen.
# 
# By default, users can enable a slide show that will run after they lock the machine.
# 
# If you enable this setting, users will no longer be able to modify slide show settings in PC Settings, and no slide show will ever start.
Prevent enabling lock screen slide show:
  lgpo.set:
  - name: CPL_Personalization_NoLockScreenSlideshow
  - setting: Enabled
  - policy_class: Machine
