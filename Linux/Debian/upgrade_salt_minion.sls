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

# This state updates the minion on Debian family OSes.
# It first checks if the minion version is at or above the currently set target version.
# It then ensures the latest Salt repo is installed and then updates the minion.
# The service restarts automatically after the package is upgraded.

{% set target_salt_version = "3002.6" %}

{% if grains['saltversioninfo'] < target_salt_version.split('.')|map('int')|list %}

{%- if grains['os'] == 'Ubuntu' %}
{%- set salt_repo_url = "https://repo.saltproject.io/py3/ubuntu/" ~ grains['osrelease'] ~ "/amd64/archive/" ~ target_salt_version %}
{%- else %}
{%- set salt_repo_url = "https://repo.saltproject.io/py3/debian/" ~ grains['osmajorrelease'] ~ "/amd64/archive/" ~ target_salt_version %}
{%- endif %}

Delete old Salt repos:
  cmd.run:
    - name: find /etc/apt/sources.list.d/ -type f -name "salt*" -delete

Install SaltStack repo:
  pkgrepo.managed:
    - name: deb {{ salt_repo_url }} {{ grains['oscodename'] }} main
    - humanname: SaltStack Debian Repo
    - file: /etc/apt/sources.list.d/salt.list
    - key_url: {{ salt_repo_url }}/SALTSTACK-GPG-KEY.pub
    - clean_file: True

Upgrade_Salt_Minion:
  cmd.run:
    - name: apt -y update && apt -y install salt-minion
    - bg: True
    - require:
      - pkgrepo: Install SaltStack repo

{%- else %}

Salt minion already upgraded:
  test.nop:
    - name: Salt minion version is already at or later than target version of {{ target_salt_version }} - no upgrade needed.

{%- endif %}
