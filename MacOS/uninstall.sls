##os: macos
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

# This state uninstalls Mozilla Firefox on macOS.
Uninstall_Firefox:
  file.absent:
    - name: /Applications/Firefox.app

################################################################################

# This states uninstalls Google Chrome on macOS.
Uninstall_Google_Chrome:
  file.absent:
    - name: /Applications/Google Chrome.app
