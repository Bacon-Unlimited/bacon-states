# SUPPORTED_IE5
#
# Designates the Microsoft Chat ActiveX control as administrator-approved.
# 
# This control is used by Web authors to build text-based and graphical-based Chat communities for real-time conversations on the Web.
# 
# If you enable this policy, this control can be run in security zones in which you specify that administrator-approved controls can be run.
# 
# If you disable this policy or do not configure it, this control will not be designated as administrator-approved.
# 
# To specify how administrator-approved controls are handled for each security zone, carry out the following steps:
# 
# 1. In Group Policy, click User Configuration, click Internet Explorer Maintenance, and then click Security.
# 
# 2. Double-click Security Zones and Content Ratings, click Import the Current Security Zones Settings, and then click Modify Settings.
# 
# 3. Select the content zone in which you want to manage ActiveX controls, and then click Custom Level.
# 
# 4. In the Run ActiveX Controls and Plug-ins area, click Administrator Approved.
Microsoft Chat:
  lgpo.set:
  - name: Microsoft_Chat
  - setting:
      Microsoft_MSChat_Control: boolean-placeholder
  - policy_class: User
