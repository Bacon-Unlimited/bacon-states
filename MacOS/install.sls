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

# The following example always installs the latest Mozilla Firefox on macOS.
Download_Mozilla_Firefox:
  file.managed:
    - name: /tmp/firefox/firefox-latest.dmg
    - source: https://download.mozilla.org/?product=firefox-latest&os=osx&lang=en-US
    - makedirs: true
    - skip_verify: true

Install_Firefox:
  macpackage.installed:
    - name: /tmp/firefox/firefox-latest.dmg
    - dmg: True
    - app: True
    - force: True
    - allow_untrusted: True
    - onchanges:
      - file: Download_Mozilla_Firefox

################################################################################

# The following example always installs the latest Google Chrome on macOS.
Download_Google_Chrome:
  file.managed:
    - name: /tmp/chrome/chrome-stable.dmg
    - source: https://dl.google.com/chrome/mac/universal/stable/GGRO/googlechrome.dmg
    - makedirs: true
    - skip_verify: true

Install_Google_Chrome:
  macpackage.installed:
    - name: /tmp/chrome/chrome-stable.dmg
    - dmg: True
    - app: True
    - force: True
    - allow_untrusted: True
    - onchanges:
      - file: Download_Google_Chrome
