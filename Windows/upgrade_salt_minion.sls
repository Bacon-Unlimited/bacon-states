##os: windows
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

# This state shows how to upgrade the Salt minion on Windows.
# It's fully templated example so you only need to tweak a version number at the top.

{% set target_salt_version = "3002.6" %}

{% set local_file = 'C:\\temp\\SaltInstall_{}.exe'.format(target_salt_version) %}

{% if grains['saltversioninfo'] < target_salt_version.split('.')|map('int')|list %}

Download_Salt_Installer:
  file.managed:
    - name: {{ local_file }}
    - source: https://repo.saltproject.io/windows/Salt-Minion-{{ target_salt_version }}-Py3-AMD64-Setup.exe
    - source_hash: https://repo.saltproject.io/windows/Salt-Minion-{{ target_salt_version }}-Py3-AMD64-Setup.exe.sha256
    - makedirs: True

Upgrade_Salt_Minion:
  cmd.run:
    - name: {{ local_file }} /S
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
