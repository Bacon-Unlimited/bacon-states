################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################
## TEST for user bacon_admin
# State to configure gnome display manager for remote login
#
# Note:
# You must modify the `remote_user` variable, below, with the user you want
# bacon's remote screen session to login as.
#
# This state will:
#   - backup original gdm config file to a file with the same name suffixed with ".orig",
#     unless a file of this name already exists
#   - manage an appropriate config file for remote access 
#   - if manage_gdm_config succeeds, restart gdm
# 
# Jinja is used to abstract the subtle differences between Linux OS
#

# NOTE!!!! CHANGE THE VALUE BELOW FOR YOUR ENVIRONMENT
{%- set remote_user = "SET_USER_NAME_HERE" %}

{%- if grains["os"] == "Ubuntu" %}
  {%- set config_file = "/etc/gdm3/custom.conf" %}
  {%- set gdm = "gdm3" %}
{%- elif grains["os"] == "Debian" %}
  {%- set config_file = "/etc/gdm3/daemon.conf" %}
  {%- set gdm = "gdm3" %}
{%- elif grains["os"] == "CentOS" or grains["os"] == "RedHat" %}
  {%- set config_file = "/etc/gdm/custom.conf" %}
  {%- set gdm = "gdm" %}
{%- else %}
  {{ raise("This state is valid for Linux only") }}
{%- endif %}

backup_original_gdm_config:
  file.copy:
    - name: {{ config_file }}.orig
    - source: {{ config_file }}

manage_gdm_config:
  file.managed:
    - name: {{ config_file }}
    - contents: |
        [daemon]
        WaylandEnable=false
        AutomaticLoginEnable=true
        AutomaticLogin={{ remote_user }}

restart_gdm_service:
  cmd.run:
    - name: systemctl restart {{ gdm }}
    - require:
      - manage_gdm_config
