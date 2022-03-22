# SUPPORTED_IE5
#
# Designates the Microsoft Agent ActiveX control as administrator-approved.
# 
# Microsoft Agent is a set of software services that supports the presentation of software agents as interactive personalities within the Microsoft Windows interface.
# 
# If you enable this policy, this control can be run in security zones in which you specify that administrator-approved controls can be run.
# 
# If you disable this policy or do not configure it, these controls will not be designated as administrator-approved.
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
Microsoft Agent:
  lgpo.set:
  - name: Microsoft_Agent
  - setting:
      Microsoft_Agent_Control: boolean-placeholder
  - policy_class: User
