# SUPPORTED_IE6SP2
#
# This policy setting allows you to set options for dragging content from one domain to a different domain when the source and destination are in the same window.
# 
# If you enable this policy setting and click Enable, users can drag content from one domain to a different domain when the source and destination are in the same window. Users cannot change this setting.
# 
# If you enable this policy setting and click Disable, users cannot drag content from one domain to a different domain when the source and destination are in the same window. Users cannot change this setting in the Internet Options dialog.
# 
# In Internet Explorer 10, if you disable this policy setting or do not configure it, users cannot drag content from one domain to a different domain when the source and destination are in the same window. Users can change this setting in the Internet Options dialog.
# 
# In Internet Explorer 9 and earlier versions, if you disable this policy setting or do not configure it, users can drag content from one domain to a different domain when the source and destination are in the same window. Users cannot change this setting in the Internet Options dialog.
Enable dragging of content from different domains within a window:
  lgpo.set:
  - name: IZ_PolicyDragDropAcrossDomainsWithinWindow_Both_RestrictedLockdown
  - setting:
      IZ_Partname2708: enum-placeholder
  - policy_class: Machine
