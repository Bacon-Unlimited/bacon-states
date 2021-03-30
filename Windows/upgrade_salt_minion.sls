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
