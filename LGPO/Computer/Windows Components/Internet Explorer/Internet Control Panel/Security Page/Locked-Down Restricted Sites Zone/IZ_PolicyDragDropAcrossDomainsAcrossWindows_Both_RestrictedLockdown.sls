# SUPPORTED_IE6SP2
#
# This policy setting allows you to set options for dragging content from one domain to a different domain when the source and destination are in different windows.
# 
# If you enable this policy setting and click Enable, users can drag content from one domain to a different domain when the source and destination are in different windows. Users cannot change this setting.
# 
# If you enable this policy setting and click Disable, users cannot drag content from one domain to a different domain when both the source and destination are in different windows. Users cannot change this setting.
# 
# In Internet Explorer 10, if you disable this policy setting or do not configure it, users cannot drag content from one domain to a different domain when the source and destination are in different windows. Users can change this setting in the Internet Options dialog.
# 
# In Internet Explorer 9 and earlier versions, if you disable this policy or do not configure it, users can drag content from one domain to a different domain when the source and destination are in different windows. Users cannot change this setting.
Enable dragging of content from different domains across windows:
  lgpo.set:
  - name: IZ_PolicyDragDropAcrossDomainsAcrossWindows_Both_RestrictedLockdown
  - setting:
      IZ_Partname2709: enum-placeholder
  - policy_class: Machine
