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
# Finally, it restarts the minion service in the background.

{% set target_salt_version = "3002.6" %}

{% if grains['saltversioninfo'] < target_salt_version.split('.')|map('int')|list %}

{%- if grains['os'] == 'Ubuntu' %}
{%- set salt_repo_url = "http://repo.saltproject.io/py3/ubuntu/" ~ grains['osrelease'] ~ "/amd64/latest" %}
{%- else %}
{%- set salt_repo_url = "https://repo.saltproject.io/py3/debian/" ~ grains['osmajorrelease'] ~ "/amd64/latest" %}
{%- endif %}

Install SaltStack repo:
  pkgrepo.managed:
    - name: deb {{ salt_repo_url }} {{ grains['oscodename'] }} main
    - humanname: SaltStack Debian Repo
    - file: /etc/apt/sources.list.d/salt.list
    - key_url: {{ salt_repo_url }}/SALTSTACK-GPG-KEY.pub
    - clean_file: True

Disable starting services:
  file.managed:
    - name: /usr/sbin/policy-rc.d
    - user: root
    - group: root
    - mode: 0755
    - contents:
      - '#!/bin/sh'
      - exit 101
    # do not touch if already exists
    - replace: False
    - prereq:
      - pkg: Upgrade Salt Minion

Upgrade Salt Minion:
  pkg.installed:
    - name: salt-minion
    - version: latest
    - order: last
    - require:
      - pkgrepo: Install SaltStack repo

Enable Salt Minion:
  service.enabled:
    - name: salt-minion
    - require:
      - pkg: Upgrade Salt Minion

Enable starting services:
  file.absent:
    - name: /usr/sbin/policy-rc.d
    - onchanges:
      - pkg: Upgrade Salt Minion

Restart Salt Minion:
  cmd.run:
    - name: 'salt-call service.restart salt-minion'
    - bg: True
    - onchanges:
      - pkg: Upgrade Salt Minion

{%- else %}

Salt minion already upgraded:
  test.nop:
    - name: Salt minion version is already at or later than target version. No upgrade needed.

{%- endif %}

