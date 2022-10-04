##os: windows
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

# This state uses local group policy to disable all access to all removable storage
# classes on Windows machines. This setting takes precedence over any individual 
# removable storage policy settings. To manage individual classes, use the policy 
# settings available for each class.
Disable_all_access_all_removable_storage_classes_GPO:
  # See the documentation for the lgpo state module here:
  # https://docs.saltproject.io/en/latest/ref/states/all/salt.states.win_lgpo.html
  lgpo.set:
    - name: 'System\Removable Storage Access\All Removable Storage classes: Deny all access'
    - setting: Enabled
    - policy_class: Machine # Other options are User or Both
