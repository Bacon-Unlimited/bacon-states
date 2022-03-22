# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage restrictions on script-initiated pop-up windows and windows that include the title and status bars.
# 
# If you enable this policy setting, Windows Restrictions security will not apply in this zone. The security zone runs without the added layer of security provided by this feature.
# 
# If you disable this policy setting, the possible harmful actions contained in script-initiated pop-up windows and windows that include the title and status bars cannot be run. This Internet Explorer security feature will be on in this zone as dictated by the Scripted Windows Security Restrictions feature control setting for the process.
# 
# If you do not configure this policy setting, Windows Restrictions security will not apply in this zone. The security zone runs without the added layer of security provided by this feature.
Allow script-initiated windows without size or position constraints:
  lgpo.set:
  - name: IZ_PolicyWindowsRestrictionsURLaction_9
  - setting:
      IZ_Partname2102: enum-placeholder
  - policy_class: User
