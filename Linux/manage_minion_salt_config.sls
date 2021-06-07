##os: ubuntu
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

# This state shows how to manage a minion config file and restart the minion
# service when there are changes to that file. It's designed to work on Windows,
# macOS, or Linux, which is why it starts out by setting the path depending on the
# OS by using Jinja.

{%- if grains['os'] == 'Windows' %}
{%- set config_file = 'C:\\salt\\conf\\minion.d\\custom.conf' %}
{%- else %}
{%- set config_file = '/etc/salt/minion.d/custom.conf' %}
{%- endif %}

Manage Salt Minion Custom Config:
  file.managed:
    - name: {{ config_file }}
    - contents: |
        multiprocessing: False
        process_count_max: 5

Restart Salt Minion:
  cmd.run:
    - name: salt-call service.restart salt-minion
    - bg: True
    - onchanges:
      - file: Manage Salt Minion Custom Config
