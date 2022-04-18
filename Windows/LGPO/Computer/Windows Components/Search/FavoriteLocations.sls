# RedistOnly4OrLater
#
# This policy setting allows you to enable or disable the Add/Remove location options on the All Locations menu as well as any defined locations that were made by a user.  When this policy is not configured, the default behavior is to allow users to add and remove new locations to the locations menu.  When the policy is enabled, the Add and Remove locations options and any previously defined user locations will not be visible.  When the policy is disabled, both the Add and Remove locations options as well as any previously specified user locations will be visible.
Prevent adding user-specified locations to the All Locations menu:
  lgpo.set:
  - name: FavoriteLocations
  - setting: Enabled
  - policy_class: Machine
