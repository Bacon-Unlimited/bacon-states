##os: macos
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

# This state updates the minion on macOS.
# It's fully templated example so you only need to tweak a version number at the top.

{% set target_salt_version = "3002.6" %}

{% set local_file = '/tmp/SaltInstall_{}.pkg'.format(target_salt_version) %}

{% if grains['saltversioninfo'] < target_salt_version.split('.')|map('int')|list %}

Download_Salt_Installer:
  file.managed:
    - name: {{ local_file }}
    - source: https://repo.saltproject.io/osx/salt-{{ target_salt_version }}-py3-x86_64.pkg
    - source_hash: https://repo.saltproject.io/osx/salt-{{ target_salt_version }}-py3-x86_64.pkg.sha256

Upgrade_Salt_Minion:
  cmd.run:
    - name: installer -pkg {{ local_file }} -target LocalSystem
    - bg: True
    - require:
      - file: Download_Salt_Installer

{%- else %}

Remove_Old_Salt_Installer:
  file.absent:
    - name: {{ local_file }}

Salt minion already upgraded:
  test.nop:
    - name: Salt minion version is already at or later than target version of {{ target_salt_version }} - no upgrade needed.

{%- endif %}
