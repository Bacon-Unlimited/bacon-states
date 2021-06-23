##os: macos
manage_macos_firefox_from_bacon:
  file.managed:
    - source: salt://packages/Windows/FireFox.pkg
    - name: /tmp/salt/pks/FireFox_20210419.pkg
    - makedirs: True
    - replace: False
    - dir_mode: 755
    
/tmp/salt/pks/FireFox_20210419.pkg:
  macpackage.installed:
    - allow_untrusted: True