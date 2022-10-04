##os: ubuntu
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

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
