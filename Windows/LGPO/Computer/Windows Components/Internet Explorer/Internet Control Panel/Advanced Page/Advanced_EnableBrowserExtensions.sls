# SUPPORTED_IE6SRVSP1
#
# This policy setting allows you to manage whether Internet Explorer will launch COM add-ons known as browser helper objects, such as toolbars. Browser helper objects may contain flaws such as buffer overruns which impact Internet Explorer's performance or stability.
# 
# If you enable this policy setting, Internet Explorer automatically launches any browser helper objects that are installed on the user's computer.
# 
# If you disable this policy setting, browser helper objects do not launch.
# 
# If you do not configure this policy, Internet Explorer automatically launches any browser helper objects that are installed on the user's computer.
Allow third-party browser extensions:
  lgpo.set:
  - name: Advanced_EnableBrowserExtensions
  - setting: Enabled
  - policy_class: Machine
