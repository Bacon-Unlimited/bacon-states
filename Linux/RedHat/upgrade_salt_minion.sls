##os: centos
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

# This state updates the minion on RedHat family OSes.
# It first checks if the minion version is at or above the currently set target version.
# It then ensures the latest Salt repo is installed and then updates the minion.
# The package postinstall script takes care of restarting the service.

{% set target_salt_version = "3002.6" %}

{% if grains['saltversioninfo'] < target_salt_version.split('.')|map('int')|list %}

Delete old Salt repos:
  cmd.run:
    - name: find /etc/yum.repos.d/ -type f -name "salt*" -delete

Install SaltStack repo:
  pkgrepo.managed:
    - name: salt
    - humanname: SaltStack repo for RHEL/CentOS $releasever
    - baseurl: https://repo.saltproject.io/py3/redhat/$releasever/$basearch/archive/{{ target_salt_version }}
    - enabled: 1
    - gpgcheck: 1
    - gpgkey: https://repo.saltproject.io/py3/redhat/$releasever/$basearch/archive/{{ target_salt_version }}/SALTSTACK-GPG-KEY.pub

# RedHat Salt package will restart service, so we need to run the command in
# the background instead of as a state.
Upgrade_Salt_Minion:
  cmd.run:
    - name: yum -y update salt-minion
    - bg: True
    - require:
      - pkgrepo: Install SaltStack repo

{%- else %}

Salt minion already upgraded:
  test.nop:
    - name: Salt minion version is already at or later than target version of {{ target_salt_version }} - no upgrade needed.

{%- endif %}
