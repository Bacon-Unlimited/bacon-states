# SUPPORTED_IE6SP2
#
# This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.
# 
# If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.
# 
# If you disable this template policy setting, no security level is configured.
# 
# If you do not configure this template policy setting, no security level is configured.
# 
# Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.
# 
# Note. It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.
Trusted Sites Zone Template:
  lgpo.set:
  - name: IZ_PolicyTrustedSitesZoneTemplate
  - setting:
      IZ_PartnameTrustedSitesZoneTemplate: enum-placeholder
  - policy_class: Machine
