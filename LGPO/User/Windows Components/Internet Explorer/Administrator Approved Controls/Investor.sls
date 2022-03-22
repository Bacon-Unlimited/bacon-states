# SUPPORTED_IE5
#
# Designates a set of Microsoft Network (MSN) Investor controls as administrator-approved.
# 
# These controls enable users to view updated lists of stocks on their Web pages.
# 
# If you enable this policy, these controls can be run in security zones in which you specify that administrator-approved controls can be run.
# 
# If you disable this policy or do not configure it, these controls will not be designated as administrator-approved.
# 
# Select the check boxes for the controls that you want to designate as administrator-approved.
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
Investor:
  lgpo.set:
  - name: Investor
  - setting:
      InvestorChart_Control: boolean-placeholder
      MS_Investor_Ticker: boolean-placeholder
  - policy_class: User
