# SUPPORTED_IE5
#
# Designates the Microsoft Network (MSN) Carpoint automatic pricing control as administrator-approved.
# 
# This control enables enhanced pricing functionality on the Carpoint Web site, where users can shop for and obtain information about vehicles.
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
Carpoint:
  lgpo.set:
  - name: Carpoint
  - setting:
      CarPoint_AutoPricer_Control: boolean-placeholder
  - policy_class: User
