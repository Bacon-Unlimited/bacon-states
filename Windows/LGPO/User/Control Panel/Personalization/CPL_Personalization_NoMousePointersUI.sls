# windows:SUPPORTED_Windows7
#
# Prevents users from changing the mouse pointers.
# 
# By default, users can use the Pointers tab in the Mouse Control Panel to add, remove, or change the mouse pointers.
# 
# If you enable this setting, none of the mouse pointer scheme settings can be changed by the user.
Prevent changing mouse pointers:
  lgpo.set:
  - name: CPL_Personalization_NoMousePointersUI
  - setting: Enabled
  - policy_class: User
