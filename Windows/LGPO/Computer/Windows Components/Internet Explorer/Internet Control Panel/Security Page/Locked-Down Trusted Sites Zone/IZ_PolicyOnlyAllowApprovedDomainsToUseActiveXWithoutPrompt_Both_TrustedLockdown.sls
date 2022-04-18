# SUPPORTED_IE8
#
# This policy setting controls whether or not the user is prompted to allow ActiveX controls to run on websites other than the website that installed the ActiveX control.
# 
# If you enable this policy setting, the user is prompted before ActiveX controls can run from websites in this zone. The user can choose to allow the control to run from the current site or from all sites.
# 
# If you disable this policy setting, the user does not see the per-site ActiveX prompt, and ActiveX controls can run from all sites in this zone.
Allow only approved domains to use ActiveX controls without prompt:
  lgpo.set:
  - name: IZ_PolicyOnlyAllowApprovedDomainsToUseActiveXWithoutPrompt_Both_TrustedLockdown
  - setting:
      IZ_Partname120b: enum-placeholder
  - policy_class: Machine
