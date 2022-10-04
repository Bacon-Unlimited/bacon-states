##os: macos
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

# The following example installs VLC.pkg.
Download_VLC:
  file.managed:
    - name: /tmp/salt/pkgs/VLC.pkg
    - source: salt://packages/MacOS/VLC.pkg
    - makedirs: true
    - skip_verify: true

Install_VLC:
  macpackage.installed:
    - name: /tmp/salt/pkgs/VLC.pkg
    - force: True
    - allow_untrusted: True
