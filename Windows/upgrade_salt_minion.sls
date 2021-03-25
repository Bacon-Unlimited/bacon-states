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

# This state shows two approaches to upgrading the Salt Minion.
# The first one works, but the minion will never return its job data back
# to the master (it gets interrupted by the install restarting it and doesn't 
# know it needs to send back job data any more).

{% set target_salt_version = "3002.6" %}
{% if salt['pkg.compare_versions'](grains['saltversion'], "<", target_salt_version) %}

Upgrade_Salt_Minion:
  cmd.script:
    - source: https://repo.saltproject.io/windows/Salt-Minion-{{ target_salt_version }}-Py3-AMD64-Setup.exe
    - args: /S

{%- endif %}

################################################################################

# This example is more complicated, but the minion will return the job data
# back to the master and log the fact that it successfully downloaded and at
# least initiated the installation.
# It's also fully templated example so you only need to tweak a version number at the top.

{% set target_salt_version = "3002.6" %}

{% set local_file = 'C:\\temp\\SaltInstall_{}.exe'.format(target_salt_version) %}

{% if salt['pkg.compare_versions'](grains['saltversion'], "<", target_salt_version) %}

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

{%- endif %}

{% if salt['pkg.compare_versions'](grains['saltversion'], ">=", target_salt_version) %}

Remove_Old_Salt_Installer:
  file.absent:
    - name: {{ local_file }}

{%- endif %}
