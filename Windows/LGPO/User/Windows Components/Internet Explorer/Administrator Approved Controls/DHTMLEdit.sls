# SUPPORTED_IE5
#
# This ActiveX control enables users to edit HTML text and see a faithful rendition of how the text would look in the browser. There are two versions of the control: a more powerful version that cannot be invoked by a web site because it includes file access and other features, and a "safe for scripting" version that has restricted functionality and is intended for use by web sites.
# 
# If you enable this policy, this control will be available as an administrator approved control and can be run if the user specifies to run administrator-approved Active-X controls and plug-ins under security zones.
# 
# If you disable this policy or do not configure it, this control will not be designated as administrator-approved.
DHTML Edit Control:
  lgpo.set:
  - name: DHTMLEdit
  - setting:
      DHTMLEdit: boolean-placeholder
  - policy_class: User
