##os: windows
################################################################################
#  
#  Bacon Unlimited
#  __________________
#  
#   [2018] - [2021] Bacon Unlimited 
#   All Rights Reserved.
#  
#  NOTICE:  All information contained herein is, and remains
#  the property of Bacon Unlimited and its suppliers,
#  if any.  The intellectual and technical concepts contained
#  herein are proprietary to Bacon Unlimited
#  and its suppliers and may be covered by U.S. and Foreign Patents,
#  patents in process, and are protected by trade secret or copyright law.
#  Dissemination of this information or reproduction of this material
#  is strictly forbidden unless prior written permission is obtained
#  from Bacon Unlimited.
################################################################################

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
