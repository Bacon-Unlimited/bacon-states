##os: macos
################################################################################
#  Bacon Unlimited. [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           But we still try really hard to make it work. If you don't like it,
#           submit a pull request.
################################################################################

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
