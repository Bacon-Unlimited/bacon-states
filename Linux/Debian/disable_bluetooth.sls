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

# This state disables Bluetooth on Debian/Ubuntu.
Ensure rfkill is installed to disable Bluetooth:
  pkg.installed:
    - name: rfkill

Disable Bluetooth:
  cmd.run:
    - name: rfkill block bluetooth
    - unless:
      - rfkill bluetooth --output SOFT | grep blocked
    - require:
      - pkg: Ensure rfkill is installed to disable Bluetooth