# windows:SUPPORTED_Windows8
#
# Shows or hides hibernate from the power options menu.
# 
# If you enable this policy setting, the hibernate option will be shown in the Power Options menu (as long as it is supported by the machine's hardware).
# 
# If you disable this policy setting, the hibernate option will never be shown in the Power Options menu.
# 
# If you do not configure this policy setting, users will be able to choose whether they want hibernate to show through the Power Options Control Panel.
Show hibernate in the power options menu:
  lgpo.set:
  - name: ShowHibernateOption
  - setting: Enabled
  - policy_class: Machine
