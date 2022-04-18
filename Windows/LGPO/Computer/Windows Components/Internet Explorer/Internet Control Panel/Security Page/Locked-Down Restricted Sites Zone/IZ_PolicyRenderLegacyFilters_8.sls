# SUPPORTED_IE10
#
# This policy setting specifies whether Internet Explorer renders legacy visual filters in this zone.
# 
# If you enable this policy setting, you can control whether or not Internet Explorer renders legacy filters by selecting Enable, or Disable, under Options in Group Policy Editor.
# 
# If you disable, or do not configure this policy setting, users can choose whether or not to render filters in this zone. Users can change this setting on the Security tab of the Internet Options dialog box. Filters are not rendered by default in this zone.
Render legacy filters:
  lgpo.set:
  - name: IZ_PolicyRenderLegacyFilters_8
  - setting:
      IZ_Partname270B: enum-placeholder
  - policy_class: Machine
