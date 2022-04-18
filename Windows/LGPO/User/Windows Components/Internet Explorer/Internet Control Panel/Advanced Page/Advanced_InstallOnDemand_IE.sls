# SUPPORTED_IE6SRVSP1ONLY
#
# This policy setting allows you to manage whether users can automatically download and install Web components (such as fonts) that can installed by Internet Explorer Active Setup.  For example, if you open a Web page that requires Japanese-text display support, Internet Explorer could prompt the user to download the Japanese Language Pack component if it is not already installed.
# 
# If you enable this policy setting, Web components such as fonts will be automatically installed as necessary.
# 
# If you disable this policy setting, users will be prompted when Web Components such as fonts would be downloaded.
# 
# If you do not configure this policy, users will be prompted when Web Components such as fonts would be downloaded.
Allow Install On Demand (Internet Explorer):
  lgpo.set:
  - name: Advanced_InstallOnDemand_IE
  - setting: Enabled
  - policy_class: User
