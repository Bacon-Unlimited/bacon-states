# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored if this policy setting is appropriately configured.
# 
# If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.
# 
# If you disable this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.
# 
# If you do not configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.
Userdata persistence:
  lgpo.set:
  - name: IZ_PolicyUserdataPersistence_4
  - setting:
      IZ_Partname1606: enum-placeholder
  - policy_class: Machine
