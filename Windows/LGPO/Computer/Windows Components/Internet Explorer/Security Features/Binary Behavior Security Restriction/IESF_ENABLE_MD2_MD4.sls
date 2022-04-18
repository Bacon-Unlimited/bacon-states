# SUPPORTED_IE9
#
# This policy setting allows you to manage whether Internet Explorer 9 can install ActiveX controls and other binaries signed with MD2 and MD4 signing technologies. Internet Explorer 9 does not support MD2 and MD4 signing technologies by default, because they are not as secure as other technologies.
# 
# If you enable this policy setting, Internet Explorer 9 installs binaries signed by MD2 and MD4 signing technologies.
# 
# If you disable or do not configure this policy setting, Internet Explorer 9 does not install binaries signed by MD2 and MD4 signing technologies.
Install binaries signed by MD2 and MD4 signing technologies:
  lgpo.set:
  - name: IESF_ENABLE_MD2_MD4
  - setting: Enabled
  - policy_class: Machine
