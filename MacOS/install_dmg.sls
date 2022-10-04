##os: macos
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

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
